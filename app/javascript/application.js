// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"
import "aos"

//import "main"
import "../assets/javascript/scroll_animado"
// import "edit_card"
// import "./plugins"

AOS.init();


// FLIP CARDS
document.querySelectorAll('.flip-card-click .flip-card-inner').forEach(function(item) {
  item.addEventListener('keypress', function(evt) { if (evt.keyCode == 13 || evt.keyCode == 32) { item.click(); } });
});

document.querySelectorAll('.flip-card-click').forEach(function(item) {
  item.addEventListener('click', function () { this.classList.toggle('flipped');  });
});
// const signUpButton = document.getElementById('signUp');
// const signInButton = document.getElementById('signIn');
// const container = document.getElementById('container');

// signUpButton.addEventListener('click', () => {
// 	container.classList.add("right-panel-active");
// });

// signInButton.addEventListener('click', () => {
// 	container.classList.remove("right-panel-active");
// });
