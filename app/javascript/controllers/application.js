import { Application } from "@hotwired/stimulus"

const application = Application.start()

document.addEventListener("turbolinks:load", function() {
  // Réinitialisation des onglets
  $('#playerTabs a').on('click', function (e) {
    e.preventDefault();
    $(this).tab('show');
  });

  // Activez l'onglet du joueur actif ici, en fonction de la logique que vous souhaitez
});

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
