import React, { Component } from 'react';
import Child from './Child';

class Parent extends Component {
  constructor() {
    super();
    console.log('%cParent CONSTRUCTED', 'color: blue');

    this.state = {
      buttonText: 'Parent',
    };
  }

  componentDidMount() {
    console.log('%cParent MOUNTED', 'color: blue');
  }

  componentDidUpdate() {
    console.log('%cParent UPDATED', 'color: blue');
  }

  componentWillUnmount() {
    console.log('%cParent UNMOUNTED', 'color: blue');
  }

  render() {
    console.log('%cParent RENDERED', 'color: blue');

    return (
      <div className="box">
        <button
          onClick={() => {
            this.setState((prevState) => ({
              buttonText: prevState.buttonText + '.',
            }));
          }}
        >
          {this.state.buttonText}
        </button>
        <Child />
      </div>
    );
  }
}

export default Parent;
