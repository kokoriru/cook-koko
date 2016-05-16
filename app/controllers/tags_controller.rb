class TagsController < ApplicationController
  def index
    @tags = Tag.all
    @tag_categories = TagCategory.all
  end
end
