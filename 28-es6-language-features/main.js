// function fetchCharacters() {
//   fetch('https://rickandmortyapi.com/api/character')
//     .then((resp) => resp.json())
//     .then((data) => console.log(data));
// }

async function fetchCharacters() {
  console.log('a');
  const resp = await fetch('https://rickandmortyapi.com/api/character');
  const data = await resp.json();
  console.log('b');
  console.log(data);
}

fetchCharacters();
