rikuto = User.create(name: "rikuto", email: "rikuto@gmail.com", password: "rikuto", password_confirmation: "rikuto")
mei = User.create(name: "mei", email: "mei@gmail.com", password: "satomei", password_confirmation: "satomei")

%w[食料品 外食費 飲み代].each do |name|
  rikuto.sub_expense_categories.create(main_expense_category_id: 1, name:)
end

%w[電車賃 タクシー代 ガソリン代].each do |name|
  rikuto.sub_expense_categories.create(main_expense_category_id: 2, name:)
end

rikuto.expenses.create(sub_expense_category_id: 1, store: "コンビニ", amount: 500, expended_at: Date.today)
rikuto.expenses.create(sub_expense_category_id: 3, store: "鳥貴族", amount: 3000, expended_at: Date.today)
mei.expenses.create(sub_expense_category_id: 6, store: "コスモ石油", amount: 2500, expended_at: Date.today)
