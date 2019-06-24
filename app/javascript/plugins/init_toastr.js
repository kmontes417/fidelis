const initToastr = () => {
  const t = document.getElementById("btn-toast");
  if (t) {
    t.addEventListener('click', () => {
      toastr.remove();
      console.log("ciao");
      toastr.options.closeButton = true;
      toastr.success('Click Button');

    });
    }
};


export { initToastr };
