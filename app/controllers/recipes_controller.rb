class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @category = Category.all
  end

  def create
    Recipe.create(recipe_params)
    redirect_to(recipes_path)
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
    @category = Category.all
  end

  def update
    @recipe = Recipe.find(params[:id])
    @category = Category.find(params["recipe"]["category_id"].to_i)
    @ingredients = Ingredient.where(:id => params[:ingredients_to_add])
   
    @category.recipes << @recipe
    @recipe.ingredients.destroy_all
    @recipe.ingredients << @ingredients
    # binding.pry
    @recipe.update(recipe_params)



    redirect_to(recipes_path)
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to(recipes_path)
  end



  private
  def recipe_params
    params.require(:recipe).permit(:title, :description, :method, :image, :category_id, :ingredients)
  end

end