class CreateNonProfits < ActiveRecord::Migration
  def change
    create_table :non_profits do |t|
      t.string :logo
      t.text :mission
      t.string :sector
      t.string :website
      t.string :phone
      t.text :address
      t.string :country
      t.string :name
      t.string :linkedIn_profile

      t.timestamps
    end
  end
end
