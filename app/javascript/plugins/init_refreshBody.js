const initRefreshBody = () => {

    Rails.ajax({
    url: "/dashboard",
    type: "get",
    dataType: "html",
    success: function(data) {
      console.log(data)
      const newCards = data.getElementById("cards-ajax");
      const currentCards = document.getElementById("cards-ajax");
      currentCards.innerHTML = newCards.outerHTML;

},
  error: function(data) {
    console.log("AJAX call did not work!" + data)
  }
})
}
export { initRefreshBody };
