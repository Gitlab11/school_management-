class CreateClassroomSubjectTeacherTable < ActiveRecord::Migration
  def up
  	create_table :classroom_subject_teacher, :id => false do |t|
      t.references :classroom
      t.references :subject
      t.references :teacher
    end
  end

  def down
    drop_table :classroom_subject_teacher
  end
end
