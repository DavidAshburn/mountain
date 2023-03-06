import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = [
    "pictureframe"
  ]

  connect() {
    this.pictures = this.pictureframeTarget.children;

    console.log(this.pictures);
  }

  next() {
    for(let pic = 0; pic < this.pictures.length; pic++) {
      if(!this.pictures[pic].classList.contains('hidden')) {
        if(pic < this.pictures.length - 1) {
          this.pictures[pic].classList.add("hidden");
          this.pictures[pic+1].classList.remove("hidden");
          return;
        } else {
          this.pictures[pic].classList.add("hidden");
          this.pictures[0].classList.remove("hidden");
          return;
        }
      }
    }
  }
}
