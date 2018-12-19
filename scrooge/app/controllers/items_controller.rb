class ItemsController < ApplicationController

	def index
		@items = Item.all
	end
	
	def new
		@item = Item.new
	end
	
	def create
		@budget = Budget.find_by(id: params[:budget_id])
		@item = Item.create#(item_params)
		redirect_to budgets_path(@budget)
	end
	
	private
	
	#def item_params
		#params.require(:item).permit(:name)
	#end

end