import React, { useState, useEffect } from "react";
import logo from "./logo.svg";
import "./App.css";

// New websocket connection
const socketClient = new WebSocket("ws://localhost:9000/cable");

function App() {
  const [activities, setActivities] = useState([]);
  const [newActivity, setNewActivity] = useState("");

  useEffect(() => {
    socketClient.onopen = (event) => {
      // The messages we send need to have a specific structure
      // command: The action we want to perform
      // identifier: Identify the channel class that we want to send the message to
      const message = {
        command: "subscribe",
        identifier: JSON.stringify({ channel: "ActivityChannel" }),
      };

      socketClient.send(JSON.stringify(message));
    };

    socketClient.onmessage = (event) => {
      let serverResponse = JSON.parse(event.data);

      if (serverResponse.type === "ping") return;

      const data = serverResponse.message;

      if (data && data.type === "all_activities") {
        setActivities(data.activity_history);
      }

      if (data && data.type === "new_activity") {
        const incomingActivity = data.activity;
        setActivities((prevActivities) => [
          incomingActivity,
          ...prevActivities,
        ]);
      }
    };
  }, []);

  const sendActivity = (e) => {
    e.preventDefault();

    // command: The action we want to perform
    // identifier: Identify the channel class that we want to send the message to
    const message = {
      command: "message",
      identifier: JSON.stringify({ channel: "ActivityChannel" }),
      data: JSON.stringify({ action: "send_activity", title: newActivity }),
    };

    socketClient.send(JSON.stringify(message));
    setNewActivity("");
  };

  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
      </header>

      <h1>Collaborative Activity List</h1>

      <form action="" onSubmit={sendActivity}>
        <input
          type="text"
          placeholder="New Activity"
          className="input"
          value={newActivity}
          onChange={(e) => setNewActivity(e.target.value)}
        />
        <input type="submit" value="Create Activity" className="btn" />
      </form>

      <h2>All Activities</h2>
      {activities.map((activity) => (
        <p key={activity.id}>{activity.title}</p>
      ))}
    </div>
  );
}

export default App;
