class TransactionItemsController < ApplicationController

	def new
		@transaction_item = TransactionItem.new
		@transaction = Transaction.find_by(id: params[:transaction_id])
		@items = Item.all
		@transaction_item.transaction_id = @transaction.id
	end
	
	def create
		@transaction_item = TransactionItem.create(transaction_item_params)
	end
	
	private
	
	def transaction_item_params
		params.require(:transaction_item).permit(:transaction_id, :item_id, :quantity, :unit_amount)
	end
	
	
end