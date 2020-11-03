// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
// require("moment/locale/ja") #datetimepicker
// require("tempusdominus-bootstrap-4") #datetimepicker

console.log("Hello from application!!");


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
import 'bootstrap';
import { flipOnClick } from '../components/flip';
import { openSidebar } from '../components/sidebar';
import { initMapbox } from '../plugins/init_mapbox';
import { scrollDown, scrollToTop } from '../components/scroll';
// import { fancyDateTimePicker } from '../plugins/date_time_picker';

document.addEventListener('turbolinks:load', () => {
  flipOnClick();
  openSidebar();
  initMapbox();
  scrollDown();
  scrollToTop();
  // fancyDateTimePicker();
});
