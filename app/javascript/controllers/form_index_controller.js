import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form-index"
export default class extends Controller {
  static targets = ["form"]

  connect() {
  }

  showCreate(event) {
    event.preventDefault()
    this.formTarget.classList.toggle("d-none")
  }
}
