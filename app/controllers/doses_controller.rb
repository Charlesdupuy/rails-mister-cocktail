
class DosesController < ApplicationController

  def new
    @dose = Dose.new(dose_params)
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'cocktails/show'
    end
  end

 def show
    @dose = Dose.find(params[:ingredient_id])
  end



  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
