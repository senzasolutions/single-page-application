// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

//= require jquery
//= require rails.validations


// No framework / Generic frameworks / Bootstrap 3 with `import` syntax
import '@client-side-validations/simple-form/src'

// Bootstrap 4+ with `import` syntax
import '@client-side-validations/simple-form/src/index.bootstrap4'

// No framework / Generic frameworks / Bootstrap 3 with `require` syntax
require('@client-side-validations/simple-form')

// Bootstrap 4+ with `require` syntax
require('@client-side-validations/simple-form/dist/simple-form.bootstrap4.esm')



