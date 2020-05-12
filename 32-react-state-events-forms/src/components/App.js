import React, { Component } from 'react';

import RecipeList from './RecipeList';
import RecipeForm from './RecipeForm';

class App extends Component {
  state = {
    recipes: ['Pizza', 'Pasta', 'Tacos'],
  };

  addRecipe = (recipe) => {
    this.setState({
      recipes: [...this.state.recipes, recipe],
    });
  };

  render() {
    return (
      <div>
        <h1>Recipe List</h1>
        <RecipeList recipes={this.state.recipes} />
        <RecipeForm addRecipe={this.addRecipe} />
      </div>
    );
  }
}

export default App;
