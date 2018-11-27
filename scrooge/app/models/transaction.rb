class Transaction < ActiveRecord::Base
	belongs_to :budget
	#belongs_to :user
	
	validates :category, presence: true
	validates :date, presence: true
	validates :amount, presence: true
	validates :description, presence: true
	
end
	
