document.addEventListener('DOMContentLoaded', function () {
  listenToPokemonLogoClick();
  fetchAllPokemon();
});

function fetchAllPokemon() {
  console.log('fetching pokemon');
  const url = 'http://localhost:3000/pokemon';

  // fetch(url)
  //   .then(function (resp) {
  //     return resp.json();
  //   })
  //   .then(function (data) {
  //     console.log(data);
  //   });

  fetch(url)
    .then((resp) => resp.json())
    .then((data) => {
      appendPokemon(data);
    });
}

function appendPokemon(pokePeople) {
  const pokemonContainer = document.getElementsByClassName('pokemon-container')[0];

  pokePeople.forEach((pokemon) => {
    pokemonContainer.innerHTML += renderSinglePokemon(pokemon);
  });
}

function renderSinglePokemon(pokemon) {
  return `
		<div class="pokemon-card" id="${pokemon.id}">
			<div class="pokemon-frame">
				<h1 class="center-text">${pokemon.name}</h1>
				<div class="pokemon-image">
					<img data-id="${pokemon.id}" class="toggle-sprite" src="${pokemon.sprites.front}">
				</div>
			</div>
		</div>`;
}

// DIFFERENT TYPES OF FUNCTIONS
// Function Expressions
// const myFunctionExpression = () => {
//   // function body
//   return 2;
// };

// const myFunctionExpression = () => 2;

// const myFunctionExpression = function () {
//   // function body
// };

// // Function Declaration & named function
// function myFunction() {
//   // function body
//   return 3;
// }

function listenToPokemonLogoClick() {
  const pokemonLogo = document.querySelector('#pokemon-logo');
  const textDiv = document.getElementsByClassName('pokemon-container')[0];
  const pokemonTextTag = textDiv.querySelector('center');
  // const pokemonText = document.getElementsByTagName('center')[0]

  pokemonLogo.addEventListener('click', function () {
    pokemonTextTag.textContent = 'Potato';
    // pokemonTextTag.innerText = 'Potato';
    // pokemonTextTag.innerHTML = 'Potato';
  });
}
