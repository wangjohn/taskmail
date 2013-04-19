class TaskLogController < ApplicationController
  def user_tasks
    @task_logs = TaskLog.user_tasklog(current_user.id)
    @task_header = "Task Log for #{current_user.email}"

    respond_to do |format|
      format.html { render :task_log }
    end
  end

  def most_recent
    @task_logs = TaskLog.most_recent
    @task_header = "Most Recent Task Log"

    respond_to do |format|
      format.html { render :task_log }
    end
  end
end
