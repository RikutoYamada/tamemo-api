class CreateExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :expenses do |t|
      t.string :store
      t.integer :amount
      t.date :expended_at
      t.references :user, foreign_key: true
      t.references :sub_expense_category, foreign_key: true
      t.timestamps
    end
  end
end
