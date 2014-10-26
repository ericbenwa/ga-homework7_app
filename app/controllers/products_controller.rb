class ProductsController < ApplicationController

	def index
		@products = Product.all
	end

	def product
		@product = Product.find(params[:product_id])
	end

	def new
		@product = Product.new
	end

	def create
		@store = Store.find(params[:store_id])
		@product = Product.new(params[:product].permit(:name, :description, :price, :store_id))
		@product.save!
		redirect_to("/stores/") # Rather redirect to the actual product created.
	end

end
