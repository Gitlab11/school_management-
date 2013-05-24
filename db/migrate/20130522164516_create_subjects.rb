class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.column :name, :string
      t.timestamps
    end
  end
end
