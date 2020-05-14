import React, { Component } from 'react';
import GrandChild from './GrandChild';

class Child extends Component {
  constructor() {
    super();
    console.log('%cChild CONSTRUCTED', 'color: green');

    this.state = {
      buttonText: 'Child',
    };
  }

  componentDidMount() {
    console.log('%cChild MOUNTED', 'color: green');
  }

  componentDidUpdate() {
    console.log('%cChild UPDATED', 'color: green');
  }

  componentWillUnmount() {
    console.log('%cChild UNMOUNTED', 'color: green');
  }

  render() {
    console.log('%cChild RENDERED', 'color: green');

    return (
      <div className="box">
        <button
          onClick={() => {
            this.setState((prevState) => ({
              buttonText: prevState.buttonText + '?',
            }));
          }}
        >
          {this.state.buttonText}
        </button>
        <GrandChild />
      </div>
    );
  }
}

export default Child;
