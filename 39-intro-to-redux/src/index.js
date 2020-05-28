import React, { Component } from "react";
import ReactDOM from "react-dom";
import { createStore } from "redux";

import "./index.css";
import "./App.css";
import logo from "./logo.svg";

const initialState = { count: 0, text: "Potato" };

const reducer = (oldState, action) => {
  switch (action.type) {
    case "UPDATE":
      return { ...oldState, count: oldState.count + action.amount };
    // case "INCREMENT":
    //   return { ...oldState, count: oldState.count + 1 };
    // case "DECREMENT":
    //   return { ...oldState, count: oldState.count - 1 };
    default:
      return oldState;
  }
};

const store = createStore(reducer, initialState);

class App extends Component {
  componentDidMount() {
    store.subscribe(() => this.forceUpdate());
  }

  render() {
    console.log("Redux state", store.getState());
    return (
      <div className="App">
        <Header />
        <Counter />
      </div>
    );
  }
}

const Header = () => {
  const renderDescription = () => {
    const remainder = store.getState().count % 5;
    const upToNext = 5 - remainder;
    return `The current count is less than ${
      store.getState().count + upToNext
    }`;
  };

  return (
    <header className="App-header">
      <img src={logo} className="App-logo" alt="logo" />
      <h1 className="App-title">{renderDescription()}</h1>
    </header>
  );
};

function Counter() {
  const increment = () => {
    // this.setState((prevState) => ({ count: prevState.count + 1 }));
    // store.dispatch({ type: "INCREMENT", amount: 1 });
    store.dispatch({ type: "UPDATE", amount: 1 });
  };

  const decrement = () => {
    // this.setState((prevState) => ({ count: prevState.count - 1 }));
    // store.dispatch({ type: "DECREMENT", amount: -1 });
    store.dispatch({ type: "UPDATE", amount: -1 });
  };

  return (
    <div className="Counter">
      <h1>{store.getState().count}</h1>
      <button onClick={decrement}> - </button>
      <button onClick={increment}> + </button>
    </div>
  );
}

ReactDOM.render(<App />, document.getElementById("root"));
