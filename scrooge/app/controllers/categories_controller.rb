class CategoriesController < ApplicationController

	def index
		@categories = Category.all
	end
	
	def new
		@category = Category.new
	end
	
	def create
		@budget = Budget.find_by(id: params[:budget_id])
		@category = Category.create(category_params)
		redirect_to budgets_path(@budget)
	end
	
	private
	
	def category_params
		params.require(:category).permit(:name)
	end

end