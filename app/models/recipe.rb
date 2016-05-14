class Recipe < ActiveRecord::Base
  has_many :tag_recipe_relations
  has_many :tags, through: :tag_recipe_relations

  validates :name, length: { maximum: 100 }, presence: true
  validates :material, length: { maximum: 50 }, presence: true
  validates :content, presence: true
end
