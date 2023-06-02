class RenameCategoryIdColumnToExpenses < ActiveRecord::Migration[7.0]
  def change
    rename_column :expenses, :category_id, :expense_category_id
  end
end
