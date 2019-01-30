Rails.application.routes.draw do
  resources :food_items
  resources :locations
  get 'restaurants/index'
  get 'restaurants/show'
  get 'dishes/index'
  get 'home/index'
  get 'search' => "food_items#search"
  root 'food_items#index'
end
