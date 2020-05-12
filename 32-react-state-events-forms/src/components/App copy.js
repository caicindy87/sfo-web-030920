import React, { Component } from 'react';

import RecipeList from './RecipeList';
import RecipeForm from './RecipeForm';

class App extends Component {
  // constructor() {
  //   super();

  //   this.state = {
  //     recipes: ['Pizza', 'Pasta', 'Tacos'],
  //   };
  // }

  state = {
    recipes: ['Pizza', 'Pasta', 'Tacos'],
    isShowing: true,
  };

  toggleShowing = () => {
    this.setState({
      isShowing: !this.state.isShowing,
    });

    // this.setState((previousState) => {
    //   return { isShowing: !previousState.isShowing };
    // });
  };

  addRecipe = (recipe) => {
    // console.log('This is our addRecipe method in the App component', recipe);
    // this.setState((prevState) => {
    //   return { recipes: [...prevState.recipes, recipe] };
    // });

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

        {/* {this.state.isShowing && <button onClick={this.toggleShowing}>On</button>} */}

        {/* {this.state.isShowing ? (
          <button onClick={this.toggleShowing}>On</button>
        ) : (
          <button onClick={this.toggleShowing}>Off</button>
        )} */}

        <button onClick={this.toggleShowing}>
          {this.state.isShowing ? 'On' : 'Off'}
        </button>
      </div>
    );
  }
}

export default App;
