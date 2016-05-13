class Tag < ActiveRecord::Base
  belongs_to :tag_category
  has_many :tag_recipe_relations
  has_many :recipes, through: :tag_recipe_relations
end
