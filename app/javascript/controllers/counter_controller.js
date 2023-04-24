import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["index", "counter"];

  connect() {
    const projects = document.querySelectorAll('.project-cards');
    const currentProject = document.querySelectorAll('.project-counter');
    const options = {
      root: null,
      rootMargin: '0px',
      threshold: 0.5
    };
    const observer = new IntersectionObserver((entries, observer) => {
      entries.forEach(entry => {
        if (entry.isIntersecting) {
          const projectIndex = entry.target.dataset.index;
          currentProject[0].textContent = parseInt(projectIndex, 10) + 1;
          currentProject[1].textContent = parseInt(projectIndex, 10) + 1;
        }
        // else {
        //   currentProject[0].textContent = 1;
        //   currentProject[1].textContent = 1;
        // }
      });
    }, options);
    projects.forEach(project => {
      observer.observe(project);
    });
  }
  update() {
    console.log("end of file")
  }
}
