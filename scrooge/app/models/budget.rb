class Budget < ActiveRecord::Base
	has_many :transactions
	belongs_to :user
	#has_many :users, through: :transactions
	
	#def current_amount
	#	transactions = Transaction.find_by(id:
	#end
end