import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = [ "nav", "button", "links", "hide" ]
  connect() {
    console.log("navbar controller connected")
    window.addEventListener('resize', close);
  }
  menu() {
    this.linksTarget.classList.add("active");
    document.querySelector("body").style.overflow = "hidden";
  }
  close() {
    console.log("locked")
    this.linksTarget.classList.remove("active");
    document.querySelector("body").style.overflow = "unset";
  }
}
