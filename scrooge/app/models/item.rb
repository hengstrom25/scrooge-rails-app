class Item < ActiveRecord::Base
	has_many :transaction_items 
	has_many :transactions, through: :transaction_items
	
	scope :alphabetical, -> { order("name ASC") }
	
	validates :name, presence: true, uniqueness: true
	
end