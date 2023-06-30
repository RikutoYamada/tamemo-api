class CreateSubExpenseCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :sub_expense_categories do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.bigint :main_expense_category_id
      t.timestamps
    end
  end
end
