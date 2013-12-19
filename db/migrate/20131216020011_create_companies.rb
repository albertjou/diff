class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :logo
      t.string :sector
      t.integer :hours # For number of hours contributed/received
      t.string :website
      t.string :phone
      t.text :description
      t.text :mission
      t.string :secondary_address
      t.string :street_address
      t.string :city
      t.string :postcode
      t.string :country

      t.string :type

      t.timestamps
    end
  end
end
