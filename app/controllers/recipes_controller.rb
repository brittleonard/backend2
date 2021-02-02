class RecipesController < ApplicationController
  # skip_before_action :verify_authenticity_token

  def index
      render json: Recipe.all
  end

end
