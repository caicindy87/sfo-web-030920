import React, { Component } from 'react';

class GrandChild extends Component {
  constructor() {
    super();
    console.log('%cGrandChild CONSTRUCTED', 'color: red');

    this.state = {
      buttonText: 'Grandchild',
    };
  }

  componentDidMount() {
    console.log('%cGrandChild MOUNTED', 'color: red');
  }

  componentDidUpdate(prevProps, prevState) {
    console.log('%cGrandChild UPDATED', 'color: red');
    // this.setState({ buttonText: 'something else' });
  }

  componentWillUnmount() {
    console.log('%cGrandChild UNMOUNTED', 'color: red');
  }

  render() {
    console.log('%cGrandChild RENDERED', 'color: red');

    return (
      <div className="box">
        <button
          onClick={() => {
            this.setState((prevState) => ({
              buttonText: prevState.buttonText + '!',
            }));
          }}
        >
          {this.state.buttonText}
        </button>
      </div>
    );
  }
}

export default GrandChild;
