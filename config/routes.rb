Rails.application.routes.draw do
  root 'goals#show'

  resources :goals, only: [:new, :show, :create]
end
