class CreateTaskVolunteerJoinTable < ActiveRecord::Migration
  def change
    create_table :tasks_volunteers, :id => false do |t|
      t.integer :task_id
      t.integer :volunteer_id
    end
  end
end
