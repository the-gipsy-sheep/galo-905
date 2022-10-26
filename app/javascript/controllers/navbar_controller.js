import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  updateNavbar() {
    if (window.scrollY >= 15) {
      this.element.classList.add("navbar-new-bg")
    } else {
      this.element.classList.remove("navbar-new-bg")
    }
  }
}
