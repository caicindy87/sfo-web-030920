import React from 'react';

import RecipeList from './components/RecipeList';

function App() {
  const siteTitleText = 'My Recipe App!';
  const recipes = ['Pizza', 'Tacos', 'Pasta', 'Cake'];

  return (
    <div>
      <h1>{siteTitleText}</h1>
      <RecipeList myRecipes={recipes} potato="good" />
    </div>
  );
}

export default App;

// class App extends React.Component {
//   render() {
//     const siteTitleText = 'My Recipe App!';

//     return <h1>{siteTitleText}</h1>;
//   }
// }
