class Budget < ActiveRecord::Base
require 'pry'
	has_many :transactions
	belongs_to :user
	
	validates :name, presence: true
	validates :amount, presence: true 
	
	
	def current_amount
		amt = self.amount
		@transactions = Transaction.where(:budget_id => self.id)
		@transactions.each do |transaction|
			if transaction.is_deposit
				amt += transaction.amount
			else
				amt -= transaction.amount
			end
		end
		amt
	end
	

end