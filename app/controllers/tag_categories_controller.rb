class TagCategoriesController < ApplicationController
  before_action :set_tag_category, only: [:show, :edit, :update, :destroy]
  def index
    @tag_categories = TagCategory.all
  end

  def show
  end

  def new
    @tag_category = TagCategory.new
  end

  def edit
  end

  def create
    @tag_category = TagCategory.new(tag_category_params)

    if @tag_category.save
      redirect_to tag_categories_path, notice: 'TagCategory was successfully created.'
    else
      render :new
    end
  end

  def update
    if @tag_category.update(tag_category_params)
      redirect_to tag_categories_path, notice: 'TagCategory was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @tag_category.destroy
    redirect_to tag_categories_url, notice: 'TagCategories was successfully'
  end

  private

  def set_tag_category
    @tag_category = TagCategory.find(params[:id])
  end

  def tag_category_params
    params.require(:tag_category).permit(:name)
  end
end
