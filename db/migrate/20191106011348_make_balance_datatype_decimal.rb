class MakeBalanceDatatypeDecimal < ActiveRecord::Migration
  def change
    change_column :accounts, :balance, :decimal, precision: 7, scale: 2
  end
end
