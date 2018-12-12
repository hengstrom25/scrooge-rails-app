class CreateTransactions < ActiveRecord::Migration[4.2]
  def change
    create_table :transactions do |t|
      t.date :date
      t.decimal :amount
      t.string :description
      t.integer :budget_id
      t.boolean :is_deposit, :default => false
  	end
  end
end