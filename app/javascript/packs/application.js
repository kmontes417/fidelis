import toastr from 'toastr';

import "toastr/build/toastr.min.css";

import "bootstrap";

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';


Turbolinks.setProgressBarDelay(20);

document.addEventListener('turbolinks:load', (event) => {
    console.log('Turbolinks loaded');

initMapbox();

initToastr();

});
