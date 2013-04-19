class Task < ActiveRecord::Base
  attr_accessible :name, :description, :finished

  validates_presence_of :name

  has_many :task_logs

  default_scope { where(:finished => false) }

  def finish_task!(user_id = nil)
    TaskLog.create(:task_id => self.id, :action => "finished", :user_id => user_id)
    update_attributes(:finished => true)
  end
end
