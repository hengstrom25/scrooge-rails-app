class User < ActiveRecord::Base
	has_secure_password
	has_many :budgets
	has_many :transactions, through: :budgets
	
	validates :name, presence: true
	validates :email, presence: true, uniqueness: true
	validates :password, presence: true
	
end