import React from 'react';

import SingleRecipe from './SingleRecipe';

class RecipeList extends React.Component {
  renderRecipes() {
    const recipes = this.props.myRecipes;

    return recipes.map((recipe, i) => <SingleRecipe key={i} recipeName={recipe} />);
  }

  render() {
    console.log(this.props);

    return <div>{this.renderRecipes()}</div>;
  }
}

export default RecipeList;
