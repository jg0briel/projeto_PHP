function openModalCreate() {
  document.querySelector('#overlay-create').classList.add('active');
  document.querySelector('#modal-create').classList.add('active');

  setTimeout(() => {
    document.querySelector('#overlay-create').style.opacity = '1';
    document.querySelector('#modal-create').style.opacity = '1';
    document.querySelector('#modal-create').style.transform = 'scale(1)';
  }, 10);
}

function closeModalCreate() {
  document.querySelector('#overlay-create').style.opacity = '0';
  document.querySelector('#modal-create').style.opacity = '0';
  document.querySelector('#modal-create').style.transform = 'scale(0.8)';

  setTimeout(() => {
    document.querySelector('#overlay-create').classList.remove('active');
    document.querySelector('#modal-create').classList.remove('active');
  }, 300);
}

function handleSubmit(e) {
  e.preventDefault();
  closeModalCreate(); 
}

document.querySelector('.open-modal-btn-create').addEventListener('click', openModalCreate);

document.querySelector('.content-create form').addEventListener('submit', handleSubmit);

function resizeTextArea(textarea) {
  textarea.style.height = 'auto';
  textarea.style.height = textarea.scrollHeight + 'px'; 
}
