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
		@transaction = Transaction.create(transaction_params)
		redirect_to transactions_path(@transaction.budget)
	end
	
	private
	
	def transaction_params
		params.require(:transaction).permit(:name, :date, :amount, :description, :budget_id)
	end

end