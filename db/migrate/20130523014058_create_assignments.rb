class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.references :classroom
      t.references :subject
      t.references :teacher
      t.timestamps
    end
  end
end
