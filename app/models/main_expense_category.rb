class MainExpenseCategory < ActiveHash::Base
  include ActiveHash::Associations
  field :name
  add id: 1, name: '食費'
  add id: 2, name: '交通費'

  # rubocop:disable Rails/HasManyOrHasOneDependent
  has_many :sub_expense_catogories, class_name: 'SubExpenseCategory'
  # rubocop:enable Rails/HasManyOrHasOneDependent
end
