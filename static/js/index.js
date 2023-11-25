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

document.querySelector('.open-modal-btn').addEventListener('click', openModal);

document.querySelector('.content form').addEventListener('submit', handleSubmit);

function resizeTextArea(textarea) {
  textarea.style.height = 'auto';
  textarea.style.height = textarea.scrollHeight + 'px'; 
}

// =======================================================

function openModalDelete() {
  document.querySelector('#overlay-delete').classList.add('active');
  document.querySelector('#modal-delete').classList.add('active');

  setTimeout(() => {
    document.querySelector('#overlay-delete').style.opacity = '1';
    document.querySelector('#modal-delete').style.opacity = '1';
    document.querySelector('#modal-delete').style.transform = 'scale(1)';
  }, 10);
}

function closeModalDelete() {
  document.querySelector('#overlay-delete').style.opacity = '0';
  document.querySelector('#modal-delete').style.opacity = '0';
  document.querySelector('#modal-delete').style.transform = 'scale(0.8)';

  setTimeout(() => {
    document.querySelector('#overlay-delete').classList.remove('active');
    document.querySelector('#modal-delte').classList.remove('active');
  }, 300);
}

document.querySelector('.open-modal-btn-delete').addEventListener('click', openModalDelete);