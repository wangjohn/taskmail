class TaskLog < ActiveRecord::Base

  # Gets the most recent tasks
  def most_recent(days_ago)
    TaskLog.where(:created_at > Time.now - days_ago.days)
  end

  # Gets the tasks belonging to a particular user
  def user_tasklog(user_id)
    TaskLog.where(:user_id => user_id)
  end
end
