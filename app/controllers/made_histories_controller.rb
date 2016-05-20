class MadeHistoriesController < ApplicationController
  before_action :set_recipe

  def create
    if MadeHistory.create(recipe_id: @recipe.id)
      redirect_to @recipe, notice: 'MadeHistory was successfully created.'
    else
      render :new
    end
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end
end
