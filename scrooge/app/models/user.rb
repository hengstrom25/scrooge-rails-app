class User < ActiveRecord::Base
	has_secure_password
	has_many :budgets
	has_many :transactions, through: :budgets
	
	validates :name, presence: true
	validates :email, presence: true
	validates :user_name, presence: true
	validates :password, presence: true
	

end