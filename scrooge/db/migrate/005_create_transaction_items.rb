class CreateTransactionItems < ActiveRecord::Migration[4.2]
	def change
		create_table :transaction_items do |t|
			t.integer :transaction_id
			t.integer :item_id
			t.integer :quantity
			t.decimal :unit_amount
		end
	end

end