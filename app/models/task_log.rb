class TaskLog < ActiveRecord::Base

  attr_accessible :user_id, :task_id, :action

  # Gets the most recent tasks
  def self.most_recent(days_ago)
    self.where(:created_at > Time.now - days_ago.days)
  end

  # Gets the tasks belonging to a particular user
  def self.user_tasklog(user_id)
    self.where(:user_id => user_id)
  end
end
