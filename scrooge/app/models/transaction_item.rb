class TransactionItem < ActiveRecord::Base
	belongs_to :trans, :class_name => 'Transaction'
	belongs_to :item

end
