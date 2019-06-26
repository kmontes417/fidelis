const initQrAjax = () => {

  const qrButton = document.getElementById("button");
  if (!qrButton) return;
  qrButton.addEventListener('click', () => {
  Rails.ajax({
  type: "GET",
  url: "/dashboard",
  dataType: "html",
  success: function(data) {
    const newQr = data.getElementById("qr");
    const qr = document.getElementById("qr");
    qr.innerHTML = newQr.innerHTML
    console.log("qr refreshed")
},
  error: function(data){console.log("qr refreshing not working")}
})


 });
};

export { initQrAjax };
