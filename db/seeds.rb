administrator = User.create(name: "administrator", email: "rikuto@gmail.com", password: "rikuto", password_confirmation: "rikuto", is_admin: true)
mei = User.create(name: "mei", email: "mei@gmail.com", password: "satomei", password_confirmation: "satomei")

administrator.sub_expense_categories.create(main_expense_category_id: 1, name: '未分類')

%w[食料品 外食 朝食 昼食 夕食 カフェ その他食事].each do |name|
  administrator.sub_expense_categories.create(main_expense_category_id: 2, name:)
end

%w[夜食 フードデリバリー].each do |name|
  mei.sub_expense_categories.create(main_expense_category_id: 2, name:)
end

%w[ドラッグストア 子育て用品 ペット用品 その他日用品].each do |name|
  administrator.sub_expense_categories.create(main_expense_category_id: 3, name:)
end

%w[アウトドア スポーツ ゲーム 音楽 映画 本 旅行 秘密の趣味 その他趣味・娯楽].each do |name|
  administrator.sub_expense_categories.create(main_expense_category_id: 4, name:)
end

%w[飲み会 プレゼント 冠婚葬祭 その他交際費].each do |name|
  administrator.sub_expense_categories.create(main_expense_category_id: 5, name:)
end

%w[電車 バス タクシー 飛行機 その他交通費].each do |name|
  administrator.sub_expense_categories.create(main_expense_category_id: 6, name:)
end

%w[衣服 クリーニング 美容院・理髪 化粧品 アクセサリー その他衣服・美容].each do |name|
  administrator.sub_expense_categories.create(main_expense_category_id: 7, name:)
end

%w[フィットネス ボディケア 医療費 薬 その他健康・医療].each do |name|
  administrator.sub_expense_categories.create(main_expense_category_id: 8, name:)
end

%w[自動車ローン 道路料金 ガソリン 駐車場 車両 車検・整備 自動車保険 その他自動車].each do |name|
  administrator.sub_expense_categories.create(main_expense_category_id: 9, name:)
end

%w[書籍 新聞・雑誌 習いごと 学費 塾 その他教養・教育].each do |name|
  administrator.sub_expense_categories.create(main_expense_category_id: 10, name:)
end

%w[ATM引き出し カード引き落とし 電子マネー その他現金・カード].each do |name|
  administrator.sub_expense_categories.create(main_expense_category_id: 11, name:)
end

%w[光熱費 電気代 ガス・灯油代 水道代 その他水道・光熱費].each do |name|
  administrator.sub_expense_categories.create(main_expense_category_id: 12, name:)
end

%w[携帯電話 固定電話 インターネット 放送視聴料 情報サービス 宅配便・運送 その他通信費].each do |name|
  administrator.sub_expense_categories.create(main_expense_category_id: 13, name:)
end

%w[住宅 家賃・地代 ローン返済 管理費・積立金 地震・火災保険 その他住宅].each do |name|
  administrator.sub_expense_categories.create(main_expense_category_id: 14, name:)
end

%w[所得税・住民税 年金保険料 健康保険 その他税・社会保障].each do |name|
  administrator.sub_expense_categories.create(main_expense_category_id: 15, name:)
end

%w[生命保険 医療保険 その他保険].each do |name|
  administrator.sub_expense_categories.create(main_expense_category_id: 16, name:)
end

%w[仕送り 事業経費 事業原価 事業投資 寄付金 雑費].each do |name|
  administrator.sub_expense_categories.create(main_expense_category_id: 17, name:)
end

administrator.expenses.create(sub_expense_category_id: 1, detail: "コンビニ", amount: 500, expended_at: Date.today)
administrator.expenses.create(sub_expense_category_id: 3, detail: "鳥貴族", amount: 3000, expended_at: Date.today)
mei.expenses.create(sub_expense_category_id: 6, detail: "コスモ石油", amount: 2500, expended_at: Date.today)
