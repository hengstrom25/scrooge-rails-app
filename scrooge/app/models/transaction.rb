class Transaction < ActiveRecord::Base
	belongs_to :budget
	has_many :categories
	
	validates :category, presence: true
	validates :date, presence: true
	validates :amount, presence: true
	validates :description, presence: true
	
end
	
