class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
    @recipe = Recipe.all
  end

  def create
    Ingredient.create(ingredient_params)
    redirect_to(ingredients_path)
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
    @recipe = Recipe.all
  end

  def update
    @ingredient = Ingredient.find(params[:id])
    @ingredient.update(ingredient_params)
    redirect_to(ingredients_path)
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy
    redirect_to(ingredients_path)
  end

  private
  def ingredient_params
    params.require(:ingredient).permit(:title, :description, :image)
  end
end