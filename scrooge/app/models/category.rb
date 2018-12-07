class Category < ActiveRecord::Base
	has_many :transactions, :join_table => 'transaction_categories'
end