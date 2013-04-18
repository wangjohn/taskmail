class TaskLogController < ApplicationController
  def user_tasks
    @task_logs = TaskLog.user_tasks(current_user.id)
  end
end
