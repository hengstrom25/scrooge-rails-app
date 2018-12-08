class Category < ActiveRecord::Base
	has_and_belongs_to_many :tx, class_name: 'Transaction', :join_table => 'transaction_categories'
end