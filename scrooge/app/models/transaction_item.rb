class TransactionItem < ActiveRecord::Base
	belongs_to :trans, :class_name => 'Transaction', :foreign_key => 'transaction_id' 
	belongs_to :item

end
