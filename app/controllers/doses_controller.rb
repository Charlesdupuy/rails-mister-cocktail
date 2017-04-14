class DosesController < ApplicationController

  def index
    @doses = Dose.all
  end

  def show
    @dose = Dose.find(params[:id])
  end


  def new
    @dose = Dose.new

  end

  def create
    @dose = Dose.new(dose_params)
    @dose.save

    redirect_to doses_path(@dose)
  end

end
