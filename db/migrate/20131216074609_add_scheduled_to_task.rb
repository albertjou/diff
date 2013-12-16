class AddScheduledToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :scheduled, :datetime
  end
end
