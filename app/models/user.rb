class User < ApplicationRecord
  has_secure_password

  has_many :sub_expense_categories, dependent: :destroy
  has_many :expenses, dependent: :destroy
end
