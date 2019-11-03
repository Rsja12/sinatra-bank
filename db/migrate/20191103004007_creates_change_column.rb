class CreatesChangeColumn < ActiveRecord::Migration
  def change
    add_column :accounts, :change, :integer
  end
end
