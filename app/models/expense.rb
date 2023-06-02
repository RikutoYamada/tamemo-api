class Expense < ApplicationRecord
  belongs_to :user
  belongs_to :sub_expense_category
end
