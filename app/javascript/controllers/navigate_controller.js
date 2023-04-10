import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navigate"
export default class extends Controller {
  static targets = [ "button", "container" ]

  connect() {
    console.log("Navigate controller connected")

    this.containerTarget.addEventListener("scroll", () => {
      if (this.containerTarget.scrollTop < (this.containerTarget.scrollHeight / 2)) {
        this.buttonTarget.style.transform = "rotate(0deg)"
      } else if (this.containerTarget.scrollTop > (this.containerTarget.scrollHeight / 2)) {
        this.buttonTarget.style.transform = "rotate(180deg)"
      }
    })
  }

  scroll(e) {
    if(this.containerTarget.scrollTop == 0) {
      this.containerTarget.scrollTop = (this.containerTarget.scrollHeight / 2)
      this.buttonTarget.style.transform = "rotate(180deg)"
    } else {
      this.containerTarget.scrollTop = 0;
      this.buttonTarget.style.transform = "rotate(0deg)"
    }
  }
}
