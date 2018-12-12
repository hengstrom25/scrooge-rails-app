class Transaction < ActiveRecord::Base
	belongs_to :budget
	has_many :transaction_items
	has_many :items, through: :transaction_items
	
	

	#validates :category, presence: true
	validates :date, presence: true
	validates :amount, presence: true
	validates :description, presence: true
	
end
	
