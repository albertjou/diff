class CreateCompetencyVolunteerJoinTable < ActiveRecord::Migration
  def change
    create_table :competencies_volunteers, :id => false do |t|
      t.integer :competency_id
      t.integer :volunteer_id
    end
  end
end
