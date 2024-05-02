Rails.application.routes.draw do
  devise_for :users
  root to: "games#new"
  get "up" => "rails/health#show", as: :rails_health_check

  resources :games, only: [:new, :create, :edit, :update] do
    member do
      get 'scores'  # Cette ligne ajoute la route pour voir les scores d'un jeu spécifique
    end
    resources :players, only: [:new, :create]
  end
end
