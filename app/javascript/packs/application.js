
import { initMapbox } from '../plugins/init_mapbox';
import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';




const refreshBody = () => {

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


document.addEventListener('turbolinks:load', (event) => {
  console.log('Turbolinks loaded');
  initMapbox();

  const closingModal = document.getElementById("closing-modal");
  closingModal.addEventListener('click', () => {
    console.log("yes I am clicking");
    refreshBody();
 });
});





