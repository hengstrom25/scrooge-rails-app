class TransactionsController < ApplicationController
	def index
		@transaction = Transaction.all
	end
	
	def show
		@transaction = Transaction.find_by(id: params[:id])
	end
	
	def new
		@transaction = Transaction.new
	end
	
	def create
		@transaction = Transaction.create
		redirect_to transaction_path 
	end

end