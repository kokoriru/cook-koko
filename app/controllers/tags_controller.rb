class TagsController < ApplicationController
  before_action :set_tags, only: [:show, :edit, :update, :destroy] 

  def index
    @tags = Tag.all
  end

  def show
    @recipe = Recipe.find(@tag.recipe_ids)
  end

  def new
    @tag = Tag.new
  end

  def edit
  end

  def create
    @tag = Tag.new(tag_params)

    if @tag.save
      redirect_to tags_path, notice: 'Tag was successfully created.'
    else
      render :new
    end
  end

  def update
    if @tag.update(tag_params)
      redirect_to tags_path, notice: 'Tag was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @tag.destroy
    redirect_to tags_path, notice: 'Tag was successfully destroy'
  end

  private

  def set_tags
    @tag = Tag.find(params[:id])
  end

  def tag_params
    params.require(:tag).permit(:name, :tag_category_id, { :recipe_ids => [] })
  end
end
