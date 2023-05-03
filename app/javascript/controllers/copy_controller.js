import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="copy"
export default class extends Controller {
  connect() {
    console.log("copy text")
  }
}
