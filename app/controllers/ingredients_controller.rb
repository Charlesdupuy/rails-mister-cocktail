class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
  end

  def show
    @ingredient = Ingredient.find(params[:cocktail_id])
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Cocktail.new(ingredient_params)
    @ingredient.save

    redirect_to ingredient_path(@cocktail)
  end

  private

  def ingredient_params
   params.require(:ingredient).permit(:name)
  end


end
