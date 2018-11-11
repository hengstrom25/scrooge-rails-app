class BudgetsController < ApplicationController

	def index
		@budgets = Budget.all
	end
	
	def show
		@budget = Budget.find_by(id: params[:id])
	end
	
	def new
		@budget = Budget.new
	end
	
	def create
		@budget = Budget.create(budget_params)
		redirect_to budget_path(@budget)
	end
	
	private
	
	def budget_params
		params.require(:budget).permit(:name, :amount)
	end
	
	

end