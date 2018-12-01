class Budget < ActiveRecord::Base

	has_and_belongs_to_many :users
	has_many :transactions

<<<<<<< HEAD
	
	validates :name, presence: true
	validates :amount, presence: true
	
=======
>>>>>>> c24e02caf0d858aa77a0be83c7348b2329bfa38a
	
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