class RecipesController < ApplicationController
  skip_before_action :verify_authenticity_token

    def index
        render json: Recipe.all
    end

    def show
        render json: Recipe.find(params["id"])
    end

    def create
        # puts params
        render json: Recipe.create(params["recipe"])
    end
end
