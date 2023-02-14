# frozen_string_literal: true

Rails.application.routes.draw do
  get 'general_shopping_list/index'
  get 'public_recipes/index'
  get 'recipe_foods/index'
  get 'recipes/index'
  root 'foodss#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
