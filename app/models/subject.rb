class Subject < ActiveRecord::Base
  attr_accessible :name
  has_many :assignments
  has_many :classrooms, :through => :assignments, :foreign_key => :classroom_id
  has_many :teachers, :through => :assignments, :foreign_key => :teacher_id
end
