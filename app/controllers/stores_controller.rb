class StoresController < ApplicationController

	def index
		@stores = Store.all
	end

	def new
		@store = Store.new
	end

	def create
		@store = Store.new(params[:store].permit(:city, :state))
		@store.save
	end

	def store
		@store = Store.find(params[:id_store])
		@products = Product.all
	end
end
