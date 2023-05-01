import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = [ "nav", "button", "links", "close" ]
  connect() {
    console.log("navbar controller connected")
    window.addEventListener('resize', close);
  }
  menu() {
    this.linksTarget.classList.add("active");
    this.linksTarget.style.display = "flex";
    this.navTarget.style.mixBlendMode = "unset";
    document.querySelector("body").style.overflow = "hidden";
  }
  close() {
    console.log("locked")
    this.linksTarget.classList.remove("active");
    if (document.querySelector("body").scrollWidth < 675) {
      this.linksTarget.style.display = "none";
    } else {
      this.linksTarget.style.display = "flex";
    }
    this.navTarget.style.mixBlendMode = "difference";
    document.querySelector("body").style.overflow = "unset";
  }
}
