class ProductsController < ApplicationController

	def product
		@product = Product.find(params[:id_product])
	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.new(params[:product].permit(:name, :description, :price, 1)) # Need to dynamically insert store id.
		@product.save
	end

end
