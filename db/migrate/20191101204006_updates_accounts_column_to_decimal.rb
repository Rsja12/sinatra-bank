class UpdatesAccountsColumnToDecimal < ActiveRecord::Migration
  def change
    change_column :accounts, :balance, :decimal
  end
end
