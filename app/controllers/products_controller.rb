class ProductsController < ApplicationController
        before_action :set_product, only: %i[ show update destroy ]
        skip_before_action :authorized_user
        wrap_parameters format: []
      
      
        # GET /teams
        
        def index
          @products = Product.all
      
          render json: @products
        end
      
      
        def show
            product = Product.find(params[:id])
            render json: product, status: :ok

        end 
    
        private
          # Use callbacks to share common setup or constraints between actions.
          def set_product
            @product= Product.find(params[:id])
          end
      
          # Only allow a list of trusted parameters through.
          def product_params
            params.permit(:name, :price, :brand_id, :imageUrl, :id)
          end
      end
