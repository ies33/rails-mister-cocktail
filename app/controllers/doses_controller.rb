class DosesController < ApplicationController

  def index
    @doses = Dose.all
  end

  # def show
  #   # private action
  #   @dose = Dose.find(params[:id])
  # end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail

    if @dose.save
      redirect_to(cocktail_path(@cocktail))
    else
      render :new
    end
  end

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredients = Ingredient.all
    @dose = Dose.new
  end
  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
  end

  private
  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
    #  get description and ingredient

  end

end
