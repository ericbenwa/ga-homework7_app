class StoresController < ApplicationController

	def index
		@stores = Store.all
	end

	def new
		@store = Store.new
	end

	def create
		@store = Store.create(params[:store].permit(:city, :state))
	end

	def store
		@store = Store.find(params[:store_id])
		@products = Product.where(store_id: params[:store_id])
	end
end
