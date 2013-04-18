class CreateTaskLogs < ActiveRecord::Migration
  def change
    create_table :task_logs do |t|
      t.integer :task_id
      t.string :action
      t.integer :user_id

      t.timestamps
    end
  end
end
