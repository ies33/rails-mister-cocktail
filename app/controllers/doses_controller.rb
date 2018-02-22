class DosesController < ApplicationController

  def index
    @doses = Dose.all
  end

  def show
    # private action
    @dose = Dose.find(params[:id])
  end

  def new
     @dose = Dose.new
  end
  def create
    @dose = Dose.new(params[:cocktail])
    @dose.save
  end
end
