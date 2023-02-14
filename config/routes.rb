# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'foods#index'

  resources :recipes, only: [:index, :show] do
    resources :recipe_foods, only: [:index]
  end
  resources :foods, only: [:index, :show]
  resources :public_recipes, only: [:index]
  resources :general_shopping_list, only: [:index]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
