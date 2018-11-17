class CreateTransactions < ActiveRecord::Migration[4.2]
  def change
    create_table :transactions do |t|
      t.string :name
      t.datetime :date
      t.integer :amount
      t.string :description
      t.integer :budget_id
      t.integer :user_id
  	end
  end
end