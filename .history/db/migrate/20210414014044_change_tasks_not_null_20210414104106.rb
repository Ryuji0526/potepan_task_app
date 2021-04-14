class ChangeTasksNotNull < ActiveRecord::Migration[6.1]
  def change
    change_column_null :tasks
  end
end
