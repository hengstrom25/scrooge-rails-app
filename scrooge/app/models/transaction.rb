class Transaction < ActiveRecord::Base
	belongs_to :budget
	has_and_belongs_to_many :categories, :join_table => 'transaction_categories'

	validates :category, presence: true
	validates :date, presence: true
	validates :amount, presence: true
	validates :description, presence: true
	
end
	
