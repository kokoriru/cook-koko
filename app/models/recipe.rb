class Recipe < ActiveRecord::Base
  has_many :tag_recipe_relations
  has_many :tag, through: :tag_recipe_relations
end
