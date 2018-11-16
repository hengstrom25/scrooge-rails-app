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
		redirect_to budgets_path
	end
	
	def edit
		@budget = Budget.find_by(id: params[:id])
	end
	
	def update
		@budget = Budget.find_by(id: params[:id])
		@budget.update(budget_params)
		redirect_to budgets_path(@budget)
	end
	
	private
	
	def budget_params
		params.require(:budget).permit(:name, :amount, :user_id)
	end
  
	

end