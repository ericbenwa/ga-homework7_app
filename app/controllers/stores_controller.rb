class StoresController < ApplicationController

	def index
		@stores = Store.all
	end

	def store
		@store = Store.find(params[:id_store])
		@products = Product.all
	end

	def product
		@product = Product.find_by_id(1)
	end
end
