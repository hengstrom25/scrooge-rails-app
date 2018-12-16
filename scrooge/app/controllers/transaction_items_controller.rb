class TransactionItemsController < ApplicationController

	def new
		@transaction_item = TransactionItem.new(transaction_item_params)
	end
	
	def create
		@transaction_item = TransactionItem.create(transaction_item_params)
	end
	
	private
	
	def transaction_item_params
		params.require(:transaction_item).permit(:transaction_id, :item_id, :quantity, :unit_amount)
	end
	
	
end