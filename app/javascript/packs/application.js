
import { initMapbox } from '../plugins/init_mapbox';
import { initRefreshBody } from '../plugins/init_refreshBody';
import { initQrAjax } from '../plugins/init_qrAjax';
import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';



document.addEventListener('turbolinks:load', (event) => {
  console.log('Turbolinks loaded');
  initMapbox();
  initQrAjax();
  initRefreshBody();
});





