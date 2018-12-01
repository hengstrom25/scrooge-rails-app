class CreateJoinTableUsersBudgets < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :budgets do |t|
      # t.index [:user_id, :budget_id]
      # t.index [:budget_id, :user_id]
    end
  end
end
