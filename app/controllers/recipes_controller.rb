class RecipesController < ApplicationController
  before_action :set_recipe, only: %i[show destroy]
  def index
    @recipes = current_user.recipes
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user = current_user
    if @recipe.save
      redirect_to food_path(@recipe), notice: 'Food was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show; end

  def destroy
    if @recipe.destroy
      flash[:success] = 'Recipe was successfully deleted.'
    else
      flash[:error] = 'Recipe could not be deletd.'
    end
    redirect_to request.referrer
  end

  def recipe_params
    params.require(:recipe).permit(:Name, :Preparation_time, :Cooking_time, :Description, :Public, :user_id)
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
end
