let pokemonContainer = '';
const baseUrl = 'http://localhost:3000/pokemon';

document.addEventListener('DOMContentLoaded', function () {
  pokemonContainer = document.getElementsByClassName('pokemon-container')[0];

  fetchAllPokemon();
  listenToFormSubmit();
  listenToDeleteButtons();
});

function listenToDeleteButtons() {
  pokemonContainer.addEventListener('click', function (event) {
    if (event.target.tagName === 'BUTTON') {
      const pokemonId = event.target.parentElement.parentElement.id;

      deletePokemon(pokemonId);
    }
  });
}

function deletePokemon(pokemonId) {
  fetch(`${baseUrl}/${pokemonId}`, { method: 'DELETE' });
  pokemonContainer.removeChild(document.getElementById(pokemonId));
}

function listenToFormSubmit() {
  const newPokemonForm = document.querySelector('#pokemon-post-form');

  // 1. Listen to the form submit
  newPokemonForm.addEventListener('submit', function (event) {
    event.preventDefault();

    // 2. Find the input fields (& get values)
    const nameInput = document.getElementById('name-input');
    const spriteFrontInput = document.getElementById('sprite-input-front');
    const spriteBackInput = document.getElementById('sprite-input-back');

    // 3. Create new pokemon in the backend
    const newPokemon = {
      name: nameInput.value,
      sprites: {
        front: spriteFrontInput.value,
        back: spriteBackInput.value,
      },
    };

    const postObj = {
      method: 'POST',
      body: JSON.stringify(newPokemon),
      headers: {
        'Content-Type': 'application/json',
        Accept: 'application/json',
      },
    };

    fetch(baseUrl, postObj)
      .then((resp) => resp.json())
      .then((pokemon) => {
        // 4. Append new pokemon to the frontend (Pessimistic render)
        pokemonContainer.innerHTML += renderSinglePokemon(pokemon);
      });

    // 4. Append new pokemon to the frontend (Optimistic render)
    // pokemonContainer.innerHTML += renderSinglePokemon(newPokemon);
  });
}

function fetchAllPokemon() {
  fetch(baseUrl)
    .then((resp) => resp.json())
    .then((data) => {
      appendPokemon(data);
    });
}

function appendPokemon(pokePeople) {
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
        <button class="pokemon-button">Delete</button>
			</div>
		</div>`;
}
