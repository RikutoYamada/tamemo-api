class ChangeSubExpenseCategories < ActiveRecord::Migration[7.0]
  def change
    add_reference :sub_expense_categories, :user, foreign_key: true
  end
end
