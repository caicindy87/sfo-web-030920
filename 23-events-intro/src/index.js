document.addEventListener('DOMContentLoaded', function () {
  console.log('DOM has loaded');
  listenToAlertMeButtonClick();
  listenToFormSubmit();
  listenToButtonClicks();
});

function listenToButtonClicks() {
  const helicopterParent = document.getElementById('helicopter-parent');

  helicopterParent.addEventListener('click', function (event) {
    // console.log(event.target);
    const buttonName = event.target.dataset.name;

    if (buttonName === 'alert') {
      alert('this is an alert');
    } else if (buttonName === 'log') {
      console.log('hello');
    } else if (buttonName === 'error') {
      console.error('this is an error');
    }
  });
}

function listenToFormSubmit() {
  // const form = document.getElementsByTagName('form')[0]
  const form = document.querySelector('form');

  form.addEventListener('submit', function (event) {
    event.preventDefault();
    // const userComment = document.getElementById('new-comment').value;
    const commentInput = event.target.comment;
    const userComment = commentInput.value;

    const commentsContainer = document.getElementById('comments-container');
    const commentListItem = document.createElement('li');
    commentListItem.innerText = userComment;

    commentsContainer.append(commentListItem);
    commentInput.value = '';
  });
}

function listenToAlertMeButtonClick() {
  // const alertButton = document.getElementsByClassName('btn')[1];
  const alertButton = document.getElementsByTagName('button')[0];

  alertButton.addEventListener('click', function () {
    console.log('you clicked me!');
  });
}
