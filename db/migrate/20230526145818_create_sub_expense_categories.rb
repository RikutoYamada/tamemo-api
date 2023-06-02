class CreateSubExpenseCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :sub_expense_categories do |t|
      t.string :name
      t.timestamps
    end
  end
end
