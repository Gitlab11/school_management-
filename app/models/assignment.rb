class Assignment < ActiveRecord::Base
  attr_accessible :classroom_id, :subject_id, :teacher_id
  belongs_to :classroom
  belongs_to :teacher
  belongs_to :subject

  #validates_uniqueness_of :subject_id, :scope => :classroom_id
  validates :subject_id, :presence => true, :uniqueness => {:scope => :classroom_id}
  #validates_uniqueness_of :subject_id, :scope => [:classroom_id, :subject_id]

  #Normal rails uniqueness validations work by checking for duplicate entries in the db, 
  #but that does not work when checking for unique form values 
  #before they are submitted to the database.

  #using validate_uniqueness_of_in_memory gem in the classroom model
  validates :subject_id, :nested_uniqueness => { :scope => :classroom, :association => :assignments, :message => "Duplicated Subject" }

  #relatorio para exibir matéria e professor
  scope :report_by_classroom, lambda {|classroom_id| where('classroom_id = ?', classroom_id)}
  #relatorio para exibir professor -> turma e materia
  scope :report_by_teacher, lambda {|teacher_id| where('teacher_id = ?', teacher_id)}
  #relatorio para exibir o materia -> turmas e proffesores
  scope :report_by_subject, lambda {|subject_id| where('subject_id = ?', subject_id)}

  #report_winterfell = Assignment.report_by_classroom 1
  #report_winterfell.each do |a| puts a.subject.name + " " + a.teacher.name end  
  
  #report_castelyrock = Assignment.report_by_classroom 2
  #report_castelyrock.each do |a| puts a.subject.name + " " + a.teacher.name end  
end
