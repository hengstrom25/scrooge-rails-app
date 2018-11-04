class CreateBudgets < ActiveRecord::Migration[4.2]
  def change
    create_table :budgets do |t|
      t.string :name
      t.integer :amount
  	end
  end
end