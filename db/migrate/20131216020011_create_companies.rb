class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :logo
      t.string :sector
      t.string :name
      t.string :linkedIn_profile
      t.integer :hours_contributed
      t.text :description
      t.string :street_address
      t.string :secondary_address
      t.string :city
      t.string :postcode
      t.string :country
      t.string :website
      t.string :phone

      t.timestamps
    end
  end
end
