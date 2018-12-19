class ItemsController < ApplicationController
before_action :logged_in?

	def index
		@items = Item.all.alphabetical
	end
	
	def new
		@item = Item.new
	end
	
	def create
		@budget = Budget.find_by(id: params[:budget_id])
		@item = Item.create(item_params)
		redirect_to items_path
	end
	
	private
	
	def item_params
		params.require(:item).permit(:name)
	end

end