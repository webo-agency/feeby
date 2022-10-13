document.addEventListener("DOMContentLoaded", function () {
  const popupOpen = document.querySelector("#shopswitch-toggle");
  const popupClose = document.querySelector("#shopswitch-popup-close");
  const popupForm = document.querySelector("#shopswitch-popup form");
  const shopChangeButton = document.querySelector("#shopswitch-popup button");

  popupOpen.addEventListener("click", togglePopup);
  popupClose.addEventListener("click", togglePopup);

  shopChangeButton.addEventListener("click", () => {
    let formData = new FormData(popupForm);
    let langPart = formData.get("language");
    let currPart = formData.get("currency");
    if (langPart && currPart) {
      window.location = langPart + "&id_currency=" + currPart;
    }
  });
});

function togglePopup() {
  const popupModal = document.querySelector("#shopswitch-popup");
  popupModal.classList.toggle("popup-hidden");
}
