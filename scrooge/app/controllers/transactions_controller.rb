class TransactionsController < ApplicationController
require 'pry'
	def index
		@budget = Budget.find_by(id: params[:budget_id])
		@transactions = Transaction.where(:budget_id => @budget.id)
		#changed search to only use :budget_id params
	end
	
	def show
		@transaction = Transaction.find_by(id: params[:id])
		@budget = Budget.find_by(id: params[:budget_id])
	end
	
	def new
		@transaction = Transaction.new
		@budget = Budget.find_by(id: params[:budget_id])
		@transaction.budget_id = @budget.id
	end
	
	def create
		@transaction = Transaction.new(transaction_params)
		if @transaction.save
			redirect_to transactions_path(@budget, :budget_id => params[:transaction][:budget_id])
		else
			render 'new'
		end
	end
	
	def edit
		@transaction = Transaction.find_by(id: params[:id])
	end
	
	def update
		@transaction = Transaction.find_by(id: params[:id])
		@transaction.update(transaction_params)
		redirect_to transactions_path(@budget, :budget_id => params[:transaction][:budget_id])
	end
	
	def destroy
		@transaction = Transaction.find_by(id: params[:id])
		#@budget = Budget.find_by(id: @transaction.budget_id)
		budget_id = @transaction.budget_id
		@transaction.destroy
		redirect_to transactions_path(:budget_id => budget_id)
	end
	
	private
	
	def transaction_params
		params.require(:transaction).permit(:category, :date, :amount, :description, :budget_id, :is_deposit)
	end

end


