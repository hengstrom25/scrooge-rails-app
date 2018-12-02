class User < ActiveRecord::Base
	has_secure_password
	has_many :budgets
	has_many :transactions, through: :budgets
	
	validates :name, presence: true
	validates :email, presence: true
	#validates :user_name, presence: true
	validates :password, presence: true
	
	#def self.find_or_create_by_omniauth(auth_hash)
		#self.where(email: auth_hash["info"]["email"]).first_or_create do |u|
			#u.user_name = auth_hash["info"]["name"]
			#u.user_name = auth_hash.info.name
			#u.password = SecureRandom.hex
		#end
	#end

end