class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
      t.string :name
      t.string :mobile
      t.integer :company_id
      t.string :position_title

      t.timestamps
    end
  end
end
