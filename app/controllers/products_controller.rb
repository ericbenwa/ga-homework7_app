class ProductsController < ApplicationController

	def index
		@products = Product.all
	end

	def new
		@product = Product.new
		@store = Store.find(params[:store_id])
	end

	def create
		@store = Store.find(params[:store_id])
		@product = @store.products.build(product_params)
		@product.save
		redirect_to @store # Rather redirect to the actual product created.
	end

	def show
		@product = Product.find(params[:id])
	end

	private

		def product_params
			params.require(:product).permit(:name, :description, :price)
		end

end
