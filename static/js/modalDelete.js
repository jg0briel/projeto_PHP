const deleteButtons = document.querySelectorAll('.open-modal-btn-delete');

deleteButtons.forEach(button => {
    button.addEventListener('click', openModalDelete);
});

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
    document.querySelector('#modal-delete').classList.remove('active');
  }, 300);
}

