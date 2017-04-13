class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def ingredients
  end

  def doses
  end
end
