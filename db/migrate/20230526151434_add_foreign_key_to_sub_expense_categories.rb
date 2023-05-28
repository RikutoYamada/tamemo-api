class AddForeignKeyToSubExpenseCategories < ActiveRecord::Migration[7.0]
  def change
    remove_column :sub_expense_categories, :main_expense_category_id
    add_column :sub_expense_categories, :main_expense_category_id, :bigint, null: false
  end
end
