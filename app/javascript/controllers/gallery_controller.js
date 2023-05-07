import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["image", "gallery"];

  show(event) {
    const imageSrc = event.target.getAttribute("src");
    this.galleryTarget.innerHTML = `<img src="${imageSrc}" />`;
    this.galleryTarget.classList.add("is-active");
  }

  hide() {
    this.galleryTarget.classList.remove("is-active");
  }
}
