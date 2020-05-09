Rails.application.routes.draw do
  resources :gamesets
  resources :questions
  resources :players
  resources :games
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
