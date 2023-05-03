import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="prompts"
export default class extends Controller {
  static targets = ["container", "icon"]
  connect() {
    console.log("prompts connected")
  }
  fadeOut() {
    console.log("fading out")
    this.iconTarget.style.opacity = `${1 - this.containerTarget.scrollTop / 500}`  }

}
