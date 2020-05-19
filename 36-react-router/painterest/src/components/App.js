import React, { Component } from 'react';
import Navbar from './Navbar';
import PaintingsContainer from './PaintingsContainer';

class App extends Component {
  render() {
    return (
      <div>
        <Navbar
          color="green"
          title="Painterest"
          description="our app"
          icon="paint brush"
        />
        <div className="ui container grid">
          <div id="content" className="sixteen wide column">
            <a href="/" />
            <a href="/login" />
            <a href="/paintings" />
          </div>
        </div>

        <PaintingsContainer />
      </div>
    );
  }
}

export default App;
