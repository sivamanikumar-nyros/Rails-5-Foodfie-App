Rails.application.routes.draw do
  resources :food_items
  resources :locations
  get 'restaurants/index'
  get 'dishes/index'
  get 'home/index'
  get 'search' => "food_items#search"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'food_items#index'
end
