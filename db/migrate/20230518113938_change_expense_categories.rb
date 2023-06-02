class ChangeExpenseCategories < ActiveRecord::Migration[7.0]
  def change
    remove_column :expense_categories, :user_id
    add_reference :expense_categories, :user, foreign_key: true
  end
end
