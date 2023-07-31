class RenameStoreColumnToDetailInExpenses < ActiveRecord::Migration[7.0]
  def change
    rename_column :expenses, :store, :detail
  end
end
