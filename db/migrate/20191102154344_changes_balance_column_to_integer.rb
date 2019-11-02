class ChangesBalanceColumnToInteger < ActiveRecord::Migration
  def change
    change_column :accounts, :balance, :integer
  end
end
