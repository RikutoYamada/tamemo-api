class SubExpenseCategory < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to_active_hash :main_expense_category
  has_many :expenses, dependent: :destroy
end
