class Budget < ActiveRecord::Base
require 'pry'
	has_many :transactions
	belongs_to :user
	#has_many :users, through: :transactions
	
	def current_amount
		amt = self.amount
		@transactions = Transaction.where(:budget_id => self.id)
		@transactions.each do |transaction|
		amt -= transaction.amount
		end
		amt
	end
end