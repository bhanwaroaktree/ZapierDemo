Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  resources :users, only: [:index]

  resources :messages, only: [:index, :new, :create]

  post '/zapier/subscribe', to: 'zapier#subscribe'
  delete '/zapier/unsubscribe', to: 'zapier#unsubscribe'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
