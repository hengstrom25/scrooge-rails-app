class ItemsController < ApplicationController
before_action :logged_in?

	def index
		@items = Item.all.alphabetical
	end
	
	def new
		@item = Item.new
	end
	
	def create
		@item = Item.new(item_params)
		if @item.save
			redirect_to items_path
		else
			render 'new'
		end
	end
	
	private
	
	def item_params
		params.require(:item).permit(:name)
	end

end

		
