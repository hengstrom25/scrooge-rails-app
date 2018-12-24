class TransactionItemsController < ApplicationController
before_action :logged_in?

	def new
		@transaction_item = TransactionItem.new
		@transaction = Transaction.find_by(id: params[:transaction_id])
		@items = Item.all.alphabetical
		@transaction_item.transaction_id = @transaction.id
	end
	
	def create
		@transaction = Transaction.find_by(id: params[:transaction_id])
		@items = Item.all.alphabetical
		@transaction_item = @transaction.transaction_items.new(transaction_item_params)
		if @transaction_item.save
			redirect_to transaction_path(@transaction)
		else
			render 'new'
		end
	end
			
	
	private
	
	def transaction_item_params
		params.require(:transaction_item).permit(:transaction_id, :item_id, :quantity, :unit_amount)
	end
	
	
end