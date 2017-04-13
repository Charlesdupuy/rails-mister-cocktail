class CocktailsController < ApplicationController

  def show
    @cocktails = Cocktail.all
  end

  def ingredients
  end

  def doses
  end
end
