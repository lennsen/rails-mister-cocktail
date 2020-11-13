Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "cocktails"
  # get "cocktails/:id"
  # get "cocktails/new"
  # post "cocktails"
  root to: 'cocktails#index'
  resources :cocktails, only: %i[show new create] do
    resources :doses, only: %i[new create]
  end
  resources :doses, only: [:destroy]
end
