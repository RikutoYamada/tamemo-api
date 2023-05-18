class AddForeignKeyToExpenses < ActiveRecord::Migration[7.0]
  def change
    add_reference :expenses, :user, foreign_key: true
    add_reference :expenses, :expense_category, foreign_key: true
  end
end
