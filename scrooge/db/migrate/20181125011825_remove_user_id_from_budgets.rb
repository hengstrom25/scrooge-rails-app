class RemoveUserIdFromBudgets < ActiveRecord::Migration[5.2]
  def change
    remove_column :budgets, :user_id, :integer
  end
end
