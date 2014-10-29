class StoresController < ApplicationController

	def index
		@stores = Store.all
	end

	def new
		@store = Store.new
	end

	def create
		@store = Store.create(params[:store].permit(:city, :state))
		redirect_to @store
	end

	def show
		@store = Store.find(params[:id])
		@products = Product.where(store_id: @store.id)
	end
end
