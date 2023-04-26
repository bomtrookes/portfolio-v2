import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "open", "close", "modal" ]
  connect() {
    console.log("modals connected")
  }
  open() {
    this.modalTarget.classList.add("is-active")
    console.log("open")
  }
  close() {
    this.modalTarget.classList.remove("is-active")
    console.log("close")
  }
}
