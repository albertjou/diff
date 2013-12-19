class RemoveNonProfitIdFromUser < ActiveRecord::Migration
  def up
    remove_column :users, :non_profit_id
  end

  def down
    add_column :users, :non_profit_id, :integer
  end
end
