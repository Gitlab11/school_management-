class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.column :name, :string
      t.timestamps
    end
  end
end
