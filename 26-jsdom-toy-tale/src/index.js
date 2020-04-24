// better way than selecting parentElement, parentElement
// sending data with fetch
// how to set up Prettier

let addToy = false;
let toyContainer = '';

document.addEventListener('DOMContentLoaded', () => {
  toyContainer = document.getElementById('toy-collection');

  toggleForm();
  fetchToys();
  listenToLikeClicks();
});

function listenToLikeClicks() {
  toyContainer.addEventListener('click', function (e) {
    // if(e.target.tagName === "BUTTON") {
    if (e.target.className === 'like-btn') {
      const toyId = event.target.dataset.toyid;
      // get the current number of likes
      const toyLikePTag = event.target.previousElementSibling;
      // event.target.parentElement.querySelector('.toy-likes')
      const toyLikes = parseInt(toyLikePTag.textContent.split(' ')[0]);
      const newToyLikes = toyLikes + 1;

      // make fetch patch to update toy likes (in the backend)
      fetch(`http://localhost:3000/toys/${toyId}`, {
        method: 'PATCH',
        headers: {
          'Content-Type': 'application/json',
          Accept: 'application/json',
        },
        body: JSON.stringify({ likes: newToyLikes }),
      });

      // update the likes on the DOM (frontend)
      toyLikePTag.textContent = `${newToyLikes} Likes`;
    }
  });
}

function fetchToys() {
  fetch('http://localhost:3000/toys')
    .then((resp) => resp.json())
    .then((toys) => {
      toys.forEach((toy) => {
        toyContainer.innerHTML += renderSingleToy(toy);
      });
    });
}

function renderSingleToy(toy) {
  return `
  <div class="card">
    <h2>${toy.name}</h2>
    <img src="${toy.image}" class="toy-avatar" />
    <p class="toy-likes">${toy.likes} Likes </p>
    <button class="like-btn" data-toyid="${toy.id}" data-toylikes="${toy.likes}">Like <3</button>
  </div>`;
}

function toggleForm() {
  const addBtn = document.querySelector('#new-toy-btn');
  const toyForm = document.querySelector('.container');

  addBtn.addEventListener('click', () => {
    // hide & seek with the form
    addToy = !addToy;
    if (addToy) {
      toyForm.style.display = 'block';
    } else {
      toyForm.style.display = 'none';
    }
  });
}

// // SCOPE
// // This is the global scope
// let myConst = 'Hi';

// function myNewFunction() {
//   // This is our local scope #1
//   myConst = 'Hello';
//   console.log(myConst);

//   // function oneMore() {
//   //   // local scope #3
//   //   console.log(myConst);
//   // }

//   // oneMore();
// }

// myNewFunction();

// console.log(myConst);

// // This is the global scope

// // JS runs in 2 phases
// // 1. compilation phase
// // 2. execution phase
