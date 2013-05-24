class Student < ActiveRecord::Base
  attr_accessible :classroom_id, :name
  belongs_to :classroom
end
