// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
//console.log("Hello from application!!");


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
import { initChatroomCable } from '../channels/chatroom_channel';

document.addEventListener('turbolinks:load', () => {
  initChatroomCable();
  initMapbox();
  flipOnClick();
  openSidebar();
  // scrollDown();
  // scrollToTop();
});


if (window.location.pathname=='/' || window.location.pathname=='#') {
  document.addEventListener('turbolinks:load', () => {
  scrollDown();
  scrollToTop();
  });
}

// const banner = document.querySelector('.banner');
// if (banner) {
//   document.addEventListener('turbolinks:load', () => {
//   scrollDown();
//   scrollToTop();
//   });
// }
