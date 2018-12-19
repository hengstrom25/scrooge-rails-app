class Transaction < ActiveRecord::Base
	belongs_to :budget
	has_many :transaction_items
	has_many :items, through: :transaction_items
	
	validates :date, presence: true
	validates :amount, presence: true
	validates :description, presence: true
	
	scope :big, -> { where("amount > ?", 100) }
	
end
	
