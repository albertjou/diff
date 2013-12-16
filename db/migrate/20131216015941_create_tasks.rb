class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :description
      t.string :category
      t.boolean :confidentiality
      t.integer :sponsor_id
      t.integer :volunteer_size
      t.string :status
      t.string :name
      t.float :latitude
      t.float :longitude
      t.string :street_address
      t.string :secondary_address
      t.string :city
      t.string :postcode
      t.string :country
      t.datetime :scheduled

      t.timestamps
    end
  end
end
