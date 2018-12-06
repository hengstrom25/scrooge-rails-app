class CreateTransactionCategory < ActiveRecord::Migration[4.2]
	def change
		create_table :transaction_category do |t|
			t.integer :transaction_id
			t.integer :category_id
			t.integer :quantity
		end
	end

end