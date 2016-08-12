class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :ingredient
end
