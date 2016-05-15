class TagCategoriesController < ApplicationController
  def index
    @tag_categories = TagCategory.all
  end

  def show
    @tag_category = TagCategory.find(params[:id])
  end
end
