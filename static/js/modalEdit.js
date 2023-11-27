const editButtons = document.querySelectorAll('.open-modal-btn');

editButtons.forEach(button => {
    button.addEventListener('click', openModal);
});


function openModal() {
  document.querySelector('#overlay').classList.add('active');
  document.querySelector('#modal').classList.add('active');

  setTimeout(() => {
    document.querySelector('#overlay').style.opacity = '1';
    document.querySelector('#modal').style.opacity = '1';
    document.querySelector('#modal').style.transform = 'scale(1)';
  }, 10);
}

function closeModal() {
  document.querySelector('#overlay').style.opacity = '0';
  document.querySelector('#modal').style.opacity = '0';
  document.querySelector('#modal').style.transform = 'scale(0.8)';

  setTimeout(() => {
    document.querySelector('#overlay').classList.remove('active');
    document.querySelector('#modal').classList.remove('active');
  }, 300);
}

function handleSubmit(e) {
  e.preventDefault();
  closeModal(); 
}

document.querySelector('.content form').addEventListener('submit', handleSubmit);

function resizeTextArea(textarea) {
  textarea.style.height = 'auto';
  textarea.style.height = textarea.scrollHeight + 'px'; 
}
