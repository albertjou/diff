class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string :name
      t.string :mobile
      t.integer :non_profit_id
      t.string :position_title
      t.string :profile_picture

      t.timestamps
    end
  end
end
