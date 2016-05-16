class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(tag_params)

    if @tag.save
      redirect_to tags_path, notice: 'Tag was succeccfully created.'
    else
      render :new
    end
  end

  private

  def tag_params
    params.require(:tag).permit(:name, :tag_category_id)
  end
end
