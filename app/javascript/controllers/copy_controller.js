import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="copy"
export default class extends Controller {
  static targets = [ "button" ]
  connect() {
    console.log("copy text")
  }
  copyURL(e) {
    e.preventDefault();
    const url = window.location.href
    navigator.clipboard.writeText(url).then(() => {
      const flash = document.createElement("div");
      flash.classList.add("prompt-notice");
      flash.textContent = "Link copied to clipboard!";
      document.body.appendChild(flash);
      setTimeout(() => flash.remove(), 3000);
    });
  }
}
