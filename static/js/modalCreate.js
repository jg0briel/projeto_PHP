function openModalCreate() {
  document.querySelector('#overlay-create').classList.add('active')
  document.querySelector('#modal-create').classList.add('active')

  setTimeout(() => {
    document.querySelector('#overlay-create').style.opacity = '1'
    document.querySelector('#modal-create').style.opacity = '1'
    document.querySelector('#modal-create').style.transform = 'scale(1)'
  }, 10);
}

function closeModalCreate() {
  document.querySelector('#overlay-create').style.opacity = '0'
  document.querySelector('#modal-create').style.opacity = '0'
  document.querySelector('#modal-create').style.transform = 'scale(0.8)'

  setTimeout(() => {
    document.querySelector('#overlay-create').classList.remove('active')
    document.querySelector('#modal-create').classList.remove('active')
  }, 300)
}

document.querySelector('.open-modal-btn-create').addEventListener('click', openModalCreate)

function resizeTextArea(textarea) {
  textarea.style.height = 'auto';
  textarea.style.height = textarea.scrollHeight + 'px';
}

document.addEventListener('DOMContentLoaded', function () {
  const createHero = document.getElementById('createHero')

  createHero.addEventListener('submit', function (event) {
      event.preventDefault();
      closeModalCreate();

      const formData = new FormData(createHero)

      fetch('../Crud/create.php', {
          method: 'POST',
          body: formData
      })
      .then(data => {
          console.log('Sucesso:', data)
      })
      .catch(error => {
          console.error('Erro:', error)
      });
  });
});