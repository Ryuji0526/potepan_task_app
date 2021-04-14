class ChangeTasksNotNull < ActiveRecord::Migration[6.1]
  def change
    change_column_null :tasks, :title
  end
end
