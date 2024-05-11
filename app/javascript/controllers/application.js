import { Application } from "@hotwired/stimulus"

const application = Application.start()

if (typeof bootstrap === 'undefined') {
  console.error('Bootstrap is not loaded');
}


// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
