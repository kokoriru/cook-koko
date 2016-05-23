class RankingPagesController < ApplicationController
  def rank
    @recipes = Recipe.all
  end
end
