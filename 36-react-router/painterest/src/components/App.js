import React, { Component } from 'react';
import { Route } from 'react-router-dom';

import Navbar from './Navbar';
import PaintingsContainer from './PaintingsContainer';
import About from './About';
import Login from './Login';

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

        <Route exact={true} path="/" component={About} />
        <Route path="/login" component={Login} />

        <PaintingsContainer />
      </div>
    );
  }
}

export default App;
