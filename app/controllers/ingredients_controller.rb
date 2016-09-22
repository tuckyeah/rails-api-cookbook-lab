class IngredientsController < ApplicationController
  before_action :set_ingredient, only: [:show, :update, :destroy]
  def index
    @ingredients = Ingredient.all
    render json: @ingredients
  end

  def show
    render json: @ingredient
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      render json: @ingredient, status: :created
    else
      render json: @ingredient.errors, status: :unprocessable_entity
    end
  end

  def update
    if @ingredient.update(ingredient_params)
      head :no_content
    else
      render json: @ingredient.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @ingredient.destroy
      head :no_content
    else
      render json: @ingredient.errors, status: :unprocessable_entity
    end
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name, :std_measure, :color, :toxicity)
  end

  def set_ingredient
    @ingredient = Ingredient.find(params[:id])
  end
end
