class AddBooleanToUsersBudgets < ActiveRecord::Migration[5.2]
  def change
    add_column :budgets_users, :owner, :boolean, :default => false
  end
end
