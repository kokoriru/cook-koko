class TagCategory < ActiveRecord::Base
  has_many :tags

  validates :name, length: { maximum: 50 }, presence: true
end
