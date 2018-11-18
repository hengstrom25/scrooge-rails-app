class TransactionsController < ApplicationController
	def index
		@transactions = Transaction.all
	end
	
	def show
		@transaction = Transaction.find_by(id: params[:id])
	end
	
	def new
		@transaction = Transaction.new
	end
	
	def create
		@transaction = Transaction.create!(transaction_params)
		redirect_to transactions_path(@transaction.budget)
	end
	
	def edit
		@transaction = Transaction.find_by(id: params[:id])
	end
	
	def update
		@transaction = Transaction.find_by(id: params[:id])
		@transaction.update(transaction_params)
		redirect_to transactions_path(@transaction)
	end
	
	private
	
	def transaction_params
		params.require(:transaction).permit(:name, :date, :amount, :description, :budget_id, :user_id)
	end

end