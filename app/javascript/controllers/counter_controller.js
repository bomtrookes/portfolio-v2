import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["index", "counter", "size"]
  connect() {
    console.log("Counter connected")
  }
  update() {
    console.log("counter update")
  }
}
