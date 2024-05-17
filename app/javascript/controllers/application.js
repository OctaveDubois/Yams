// app/javascript/application.js

// Import des librairies nécessaires, si elles ne sont pas déjà importées via Importmaps
import { Application } from "@hotwired/stimulus";
import "bootstrap";  // Assurez-vous que Bootstrap est bien importé si nécessaire

const application = Application.start();

// Configurez Stimulus ou d'autres configurations ici
application.debug = false;
window.Stimulus = application;

// Écouteur pour les événements Turbo après chargement des pages
document.addEventListener("turbo:load", function() {
  if (typeof bootstrap !== 'undefined') {
    // Réinitialisez vos onglets ou autres composants Bootstrap ici
    console.log("Bootstrap est chargé et prêt.");
    // Assurez-vous que tous les éléments nécessaires sont rechargés ou réinitialisés ici
  } else {
    console.error("Bootstrap n'est pas chargé.");
  }
});

// Exportation de l'application pour utilisation dans d'autres fichiers si nécessaire
export { application };
