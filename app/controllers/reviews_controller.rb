class ReviewsController < ApplicationController
        before_action :set_product, only: %i[ show update destroy ]
        wrap_parameters format: []
      
      
        # GET /teams
        def index
          @reviews = Review.all
      
          render json: @reviews
        end
      
        # GET /teams/1
        def show
          render json: @reviews
      
        end
    
        private
          # Use callbacks to share common setup or constraints between actions.
          def set_review
            @product= Review.find(params[:id])
          end
      
          # Only allow a list of trusted parameters through.
          def review_params
            params.permit(:product_id, :user_id, :content, :rating, :id)
          end
      end

