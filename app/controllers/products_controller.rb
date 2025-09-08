class ProductsController < ApplicationController
    before_action :set_product, only: [:show,:update,:destroy]
    skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]

    def index
        @products = Product.all 
        # if @product.present?
        #     render json: @product
        # else
        #     render json: "Proudcts not found"
        # end
    end

    def show
        @product = Product.find(params[:id])
    end

    def new
        @product = Product.new
    end

    def create
        @product = Product.new(get_params)
        if @product.save!
            redirect_to @product
        else
            render :new, status: :unprocessable_entity
        end
    end

    def edit
        @product = Product.find(params[:id])
    end

    def update
        if @product.save
            redirect_to @product
        else
            render :new, status: :unprocessable_entity
        end
    end

    def destroy
        @product.destroy
        redirect_to products_path
    end

    private

    def set_product
        @product = Product.find(params[:id])
    end

    def get_params
        params.require(:product).permit(:name)
    end
end
