class RemoveExpenseCategoryIdFromExpenses < ActiveRecord::Migration[7.0]
  def change
    remove_column :expenses, :sub_expense_category_id
    add_reference :expenses, :sub_expense_category, foreign_key: true, null: false
  end
end
