class AddColumnToTasks < ActiveRecord::Migration[6.1]
  def up
    add_column :tasks, :description, :text
  end
end
