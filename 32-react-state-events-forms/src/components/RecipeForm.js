import React, { Component } from 'react';

class RecipeForm extends Component {
  state = {
    recipeName: '',
  };

  handleChange = (e) => {
    this.setState({
      recipeName: e.target.value,
    });
  };

  handleSubmit = (e) => {
    e.preventDefault();

    this.props.addRecipe(this.state.recipeName);
    this.setState({ recipeName: '' });
  };

  render() {
    return (
      <form onSubmit={this.handleSubmit}>
        <input
          type="text"
          placeholder="New Recipe Name"
          onChange={this.handleChange}
          value={this.state.recipeName}
        />
        <input type="submit" value="Create Recipe" />
      </form>
    );
  }
}

export default RecipeForm;
