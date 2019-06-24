

const initIcon = () => {

  const icon = document.querySelectorAll('.icon');

  icon.forEach(img => {
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
