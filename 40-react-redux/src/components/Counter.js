import React, { Component } from "react";
import { connect } from "react-redux";

class Counter extends Component {
  increment = () => {
    // store.dispatch({ type: "UPDATE", amount: 1 });
    // this.props.increment();
    this.props.update(1);
  };

  decrement = () => {
    // store.dispatch({ type: "UPDATE", amount: -1 });
    this.props.update(-1);
  };

  render() {
    console.log(this.props);
    return (
      <div className="Counter">
        <h1>{this.props.count}</h1>
        <button onClick={this.decrement}> - </button>
        <button onClick={this.increment}> + </button>
      </div>
    );
  }
}

function mapStateToProps(state) {
  return { count: state.count };
}

function mapDispatchToProps(dispatch) {
  return {
    increment: () => dispatch({ type: "INCREMENT" }),
    update: (amount) => dispatch({ type: "UPDATE", amount: amount }),
  };
}

export default connect(mapStateToProps, mapDispatchToProps)(Counter);
