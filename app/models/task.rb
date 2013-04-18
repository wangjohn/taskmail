class Task < ActiveRecord::Base
  attr_accessible :name, :description

  validates_presence_of :name

  default_scope { where(:finished => false) }

  def self.finish_task!
    TaskLog.create(:task_id => self.id, :action => "finished", :user_id => current_user.id)
    self.update_attributes(:finished => true)
  end
end
