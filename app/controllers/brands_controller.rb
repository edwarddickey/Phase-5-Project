class BrandsController < ApplicationController
    def index 
        @brands = Brand.all
        render json: @brands
    end

    def show
        render json: @game
    end

    
end
