class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.integer :volunteer_id

      t.timestamps
    end
  end
end
