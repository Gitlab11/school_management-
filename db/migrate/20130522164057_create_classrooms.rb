class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.column :name, :string
      t.timestamps
    end
  end
end
