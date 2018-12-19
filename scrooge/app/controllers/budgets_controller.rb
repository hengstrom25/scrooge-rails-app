class BudgetsController < ApplicationController
before_action :logged_in?

	def index
		@budgets = Budget.where(user_id: current_user.id)
	end
	
	def show
		@budget = Budget.find_by(id: params[:id])
		
	end
	
	def new
		#get_user
		@budget = Budget.new
	end
	
	def create
		#get_user
		@budget = Budget.new(budget_params)
		@budget.user_id = current_user.id if current_user
		if @budget.save
			redirect_to budgets_path(@budget)
		else
			render 'new'
		end
	end
	
	def edit
		@budget = Budget.find_by(id: params[:id])
	end
	
	def update
		@budget = Budget.find_by(id: params[:id])
		@budget.update(budget_params)
		redirect_to budgets_path(@budget)
	end
	
	def destroy
		@budget = Budget.find_by(id: params[:id])
		@budget.destroy
		redirect_to budgets_path(@budget)
	end
	
	private
	
	def budget_params
		params.require(:budget).permit(:name, :amount)
	end
	
	def get_user
		@user = User.find_by(id: params[:user_id])
	end
	
	
	

  
	

end