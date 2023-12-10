Rails.application.routes.draw do
  devise_for :users
  root to: "games#new"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  Rails.application.routes.draw do
    resources :games, only: [:new, :create, :edit, :update] do
      resources :players, only: [:new, :create]
    end
  end


end
