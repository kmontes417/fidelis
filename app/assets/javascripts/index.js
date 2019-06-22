const icon = document.querySelectorAll('[id=icon]');

icon.forEach(img => {
  img.addEventListener("click", (event) => {
   img.removeAttribute("id");
  });
});



