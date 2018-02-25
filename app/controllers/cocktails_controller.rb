class CocktailsController < ApplicationController

  before_action :set_cocktail, only: [:show]


  def index
    @cocktails = Cocktail.all
  end

  def show
    # private action
    @dose = @cocktail.doses

  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to(Cocktail.last)
    else
      render :new
    end

  end

  def update
    # private action
    @cocktail.update(params[:cocktail])
    # Will raise ActiveModel::ForbiddenAttributesError
  end

private
  def cocktail_params
    params.require(:cocktail).permit(:name,:photo)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

end
