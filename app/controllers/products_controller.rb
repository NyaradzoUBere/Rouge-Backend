class ProductsController < ApplicationController
    def index
        @products = Product.all.sample(50)
        render json: @products
    end

    def show
        @product = Product.find(params[:id])
        render json: @product
    end
end
