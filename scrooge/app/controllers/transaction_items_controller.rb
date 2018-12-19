class TransactionItemsController < ApplicationController

	def new
		@transaction_item = TransactionItem.new
		@transaction = Transaction.find_by(id: params[:transaction_id])
		@items = Item.order('name ASC')
		@transaction_item.transaction_id = @transaction.id
	end
	
	def create
		@transaction = Transaction.find_by(id: params[:transaction_id])
		if @transaction.transaction_items.create(transaction_item_params)
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