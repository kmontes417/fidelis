

const initIcon = () => {

  const icons = document.querySelectorAll('.icon');

  icons.forEach(img => {
    img.addEventListener("click", (event) => {
    if(img.className === (".icon")) {
      img.className = (".icon-onclick");
    }
    else {
      img.className = (".icon");
    };
   });
  });

};

export { initIcon };
