# Ingredients Controller
class IngredientsController < OpenReadController
  before_action :set_ingredient, only: [:update, :destroy]

  # GET /ingredients
  # GET /ingredients.json
  def index
    @ingredients = Ingredient.all

    render json: @ingredients
  end

  # GET /ingredients/1
  # GET /ingredients/1.json
  def show
    render json: Ingredient.find(params[:id])
  end

  # POST /ingredients
  # POST /ingredients.json
  def create
    @ingredient = current_user.ingredients.build(ingredient_params)

    if @ingredient.save
      render json: @ingredient, status: :created, location: @ingredient
    else
      render json: @ingredient.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ingredients/1
  # PATCH/PUT /ingredients/1.json
  def update
    if @ingredient.update(ingredient_params)
      head :no_content
    else
      render json: @ingredient.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ingredients/1
  # DELETE /ingredients/1.json
  def destroy
    @ingredient.destroy

    head :no_content
  end

  def set_ingredient
    @ingredient = current_user.ingredients.find(params[:id])
  end

  def ingredient_params
    params.require(:ingredient).permit(:text)
  end

  private :set_ingredient, :ingredient_params
end
