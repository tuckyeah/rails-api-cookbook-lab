class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :std_measure, :color, :toxicity
end
