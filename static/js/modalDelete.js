const deleteButtons = document.querySelectorAll('.open-modal-btn-delete');

deleteButtons.forEach(button => {
    button.addEventListener('click', function() {
        const id = button.dataset.id;
        openModalDelete(id);
    });
});

function openModalDelete(id) {
  const atualizarId = document.querySelector("#idDelete");
  atualizarId.value = id;

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

document
  .querySelector(".content form")
  .addEventListener("submit", handleSubmit);

document.addEventListener("DOMContentLoaded", function () {
  const deleteHero = document.getElementById("deleteHero");

  deleteHero.addEventListener("submit", function (event) {
    closeModalDelete();
    
    const formData = new FormData(deleteHero);
    
    fetch("../Crud/delete.php", {
      method: "POST",
      body: formData,
    })
      .then((data) => {
        console.log("Sucesso:", data);
      })
      .catch((error) => {
        console.error("Erro:", error);
      });
    location.reload();
  });
});