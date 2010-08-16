class Ticket < ActiveRecord::Base
  has_many :documents
  has_many :timelines
  belongs_to  :reporter, :class_name => 'User', :foreign_key => 'reported_by'
  belongs_to  :assignee, :class_name => 'User', :foreign_key => 'assigned_to'
  
end
