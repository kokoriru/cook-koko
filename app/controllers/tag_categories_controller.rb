class TagCategoriesController < ApplicationController
  def index
    @tag_categories = TagCategory.all
  end
end
