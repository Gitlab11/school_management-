class Teacher < ActiveRecord::Base
  attr_accessible :name
  has_many :assignments
  has_many :subjects, :through => :assignments, :foreign_key => :subject_id
  has_many :classrooms, :through => :assignments, :foreign_key => :classroom_id
end
