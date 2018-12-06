class Category
	has_and_belongs_to_many :transactions, :join_table => 'transaction_categories'
end