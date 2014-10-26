class StoresController < ApplicationController

	def index
		@stores = Store.all
	end

	def new
		@store = Store.new
	end

	def create
		@store = Store.create(params[:store].permit(:city, :state))
		redirect_to("/stores/") # Rather redirect to the actual store created.
	end

	def store
		@store = Store.find(params[:store_id])
		@products = Product.where(store_id: params[:store_id])
	end
end
