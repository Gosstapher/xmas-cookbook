class QuantitiesController < ApplicationController

  private 
    def quantity_params
      params.require(:quantity).permit(:recipe_id, :ingredient_id, :amount)
    end
end