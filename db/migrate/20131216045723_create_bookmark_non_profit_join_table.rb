class CreateBookmarkNonProfitJoinTable < ActiveRecord::Migration
  def change
    create_table :bookmarks_non_profits, :id => false do |t|
      t.integer :bookmark_id
      t.integer :non_profit_id
    end
  end
end
