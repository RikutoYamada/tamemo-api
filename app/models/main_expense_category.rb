class MainExpenseCategory < ActiveHash::Base
  include ActiveHash::Associations
  field :name
  add id: 1, name: '未分類'
  add id: 2, name: '食費'
  add id: 3, name: '日用品'
  add id: 4, name: '趣味・娯楽'
  add id: 5, name: '交際費'
  add id: 6, name: '交通費'
  add id: 7, name: '衣服・美容'
  add id: 8, name: '健康・医療'
  add id: 9, name: '自動車'
  add id: 10, name: '教養・教育'
  add id: 11, name: '現金・カード'
  add id: 12, name: '水道・光熱費'
  add id: 13, name: '通信費'
  add id: 14, name: '住宅'
  add id: 15, name: '税・社会保障'
  add id: 16, name: '保険'
  add id: 17, name: 'その他'

  # rubocop:disable Rails/HasManyOrHasOneDependent
  has_many :sub_expense_catogories, class_name: 'SubExpenseCategory'
  # rubocop:enable Rails/HasManyOrHasOneDependent
end
