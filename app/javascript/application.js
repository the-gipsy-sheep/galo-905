// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"
import "aos"

// import "scroll_animado"
// import "edit_card"
// import "./plugins"

AOS.init();

const scrollAnimado = (elemento) => {
  const destino = document.querySelector (elemento)
  destino.scrollIntoView ({
      behavior: 'smooth'
  });
}

scrollAnimado(".banner")
