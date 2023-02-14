# frozen_string_literal: true

Rails.application.routes.draw do
  get 'recipe_foods/index'
  get 'recipes/index'
  get 'foods/index'
  root 'users#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
