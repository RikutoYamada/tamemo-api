class ExpenseCategory < ApplicationRecord
  belongs_to :user
  has_many :expenses, dependent: :destroy
  has_ancestry
end
