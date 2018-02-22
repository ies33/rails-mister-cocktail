class CocktailsController < ApplicationController

  before_action :set_cocktail, only: [:show, :create, :update, :destroy]


  def index
    @cocktails = Cocktail.all
  end

  def show
    # private action
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(params[:cocktail])
    @cocktail.save
    # Will raise ActiveModel::ForbiddenAttributesError
  end

  def update
    # private action
    @cocktail.update(params[:cocktail])
    # Will raise ActiveModel::ForbiddenAttributesError
  end

private
  def cocktail_params
    # params.require(:task).permit(:title, :details)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

end
