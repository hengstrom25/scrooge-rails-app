class Transaction < ActiveRecord::Base
	belongs_to :budget, optional: true
	belongs_to :user, optional: true
	
	def transaction
		if over_budget
			"Bah Humbug! You are over budget for #{budget.name}."
		elsif deposit
		else
			self.budget.amount -= self.transaction.amount
		end
	end
	
	
	def deposit
	end
	
	def over_budget
		self.budget.amount < self.transaction.amount
	end
end