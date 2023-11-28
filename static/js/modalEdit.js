const editButtons = document.querySelectorAll(".open-modal-btn");

editButtons.forEach((button) => {
  button.addEventListener("click", function () {
    const id = button.dataset.id;
    openModal(id);
  });
});

function receiveData(id) {
  const formData = new FormData();
  formData.append("id", id);

  fetch("../Crud/receiveDataById.php", {
    method: "POST",
    body: formData,
  })
    .then((response) => response.json())
    .then((data) => {
      console.log(data);
    })
    .catch((error) => {
      console.error("Erro:", error);
    });
}

function openModal(id) {
  const atualizarId = document.querySelector("#idEdit");
  atualizarId.value = id;

  document.querySelector("#overlay").classList.add("active");
  document.querySelector("#modal").classList.add("active");

  setTimeout(() => {
    document.querySelector("#overlay").style.opacity = "1";
    document.querySelector("#modal").style.opacity = "1";
    document.querySelector("#modal").style.transform = "scale(1)";
  }, 10);
}

function closeModal() {
  document.querySelector("#overlay").style.opacity = "0";
  document.querySelector("#modal").style.opacity = "0";
  document.querySelector("#modal").style.transform = "scale(0.8)";

  setTimeout(() => {
    document.querySelector("#overlay").classList.remove("active");
    document.querySelector("#modal").classList.remove("active");
  }, 300);
}

function handleSubmit(e) {
  e.preventDefault();
  closeModal();
}

document
  .querySelector(".content form")
  .addEventListener("submit", handleSubmit);

function resizeTextArea(textarea) {
  textarea.style.height = "auto";
  textarea.style.height = textarea.scrollHeight + "px";
}

document.addEventListener("DOMContentLoaded", function () {
  const editHero = document.getElementById("editHero");

  editHero.addEventListener("submit", function (event) {
    event.preventDefault();
    closeModalCreate();

    const formData = new FormData(editHero);

    fetch("../Crud/update.php", {
      method: "POST",
      body: formData,
    })
      .then((data) => {
        console.log("Sucesso:", data);
      })
      .catch((error) => {
        console.error("Erro:", error);
      });
  });
});
