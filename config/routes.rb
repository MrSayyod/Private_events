Rails.application.routes.draw do
  resources :events
  resource :session 
  resources :users
  root "events#index"
  get "upcoming" => "upcoming#index"
  get "past" => "past#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
