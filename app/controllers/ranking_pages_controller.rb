class RankingPagesController < ApplicationController
  def rank
    @recipes = Recipe.order('created_at ASC')
  end
end
