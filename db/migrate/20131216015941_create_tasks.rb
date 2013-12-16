class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :charity_id
      t.text :description
      t.string :category
      t.boolean :confidentiality
      t.integer :non_profit_id
      t.integer :sponsor_id
      t.integer :volunteer_size
      t.string :status

      t.timestamps
    end
  end
end
