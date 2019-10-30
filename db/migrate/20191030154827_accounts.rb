class Accounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.float :balance
      t.integer :client_id
    end
  end
end
