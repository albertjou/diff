class CreateCompetencyTaskJoinTable < ActiveRecord::Migration
  def change
    create_table :competencies_tasks, :id => false do |t|
      t.integer :competency_id
      t.integer :task_id
    end
  end
end
