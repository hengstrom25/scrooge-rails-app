class Budget < ActiveRecord::Base
	has_many :transactions
	belongs_to :user
	#has_many :users, through: :transactions
end