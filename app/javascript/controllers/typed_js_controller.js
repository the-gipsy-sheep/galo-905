import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Ahorrá tiempo", "Recibí lo que esperás", "Siempre el mejor regalo"],
      typeSpeed: 100,
      loop: true
    })
  }
}
