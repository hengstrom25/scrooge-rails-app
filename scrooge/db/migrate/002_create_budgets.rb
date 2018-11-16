class CreateBudgets < ActiveRecord::Migration[4.2]
  def change
    create_table :budgets do |t|
      t.string :name
      t.integer :amount
      #t.integer :user_id
  	end
  end
end