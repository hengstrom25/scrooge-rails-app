class TransactionItem < ActiveRecord::Base
	belongs_to :transaction
	belongs_to :item

end
