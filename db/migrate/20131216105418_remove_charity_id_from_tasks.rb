class RemoveCharityIdFromTasks < ActiveRecord::Migration
  def up
    remove_column :tasks, :charity_id
  end

  def down
    add_column :tasks, :charity_id, :string
  end
end
