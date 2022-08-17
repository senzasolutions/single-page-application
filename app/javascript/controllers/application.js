import { Application } from "@hotwired/stimulus"
import '@client-side-validations/client-side-validations/src'

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }



