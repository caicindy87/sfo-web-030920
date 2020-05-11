// VANILLA JS
// const siteTitle = document.createElement('h1');
// siteTitle.textContent = 'Recipe List';

// const rootDiv = document.getElementById('root');
// rootDiv.appendChild(siteTitle);

// REACT
const siteTitle = React.createElement('h1', {}, 'Recipe List');
const rootDiv = document.getElementById('root');

ReactDOM.render(siteTitle, rootDiv);
