class Classroom < ActiveRecord::Base
  attr_accessible :name, :assignments_attributes
  has_many :students
  has_many :assignments
  has_many :subjects, :through => :assignments, :foreign_key => :subject_id
  has_many :teachers, :through => :assignments, :foreign_key => :teacher_id  
  accepts_nested_attributes_for :assignments, allow_destroy: true
end
