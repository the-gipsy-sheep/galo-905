import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  updateNavbar() {
    if (window.scrollY >= 100) {
      this.element.classList.add("fixed-top")
    } else {
      this.element.classList.remove("fixed-top")
    }
  }
}
