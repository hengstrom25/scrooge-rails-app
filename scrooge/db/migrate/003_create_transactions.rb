class CreateTransactions < ActiveRecord::Migration[4.2]
  def change
    create_table :transactions do |t|
      t.string :name
      t.datetime :date
      t.integer :amount
      t.string :description
  	end
  end
end