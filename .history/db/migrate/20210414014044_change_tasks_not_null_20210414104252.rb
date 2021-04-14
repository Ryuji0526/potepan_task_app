class ChangeTasksNotNull < ActiveRecord::Migration[6.1]
  def change
    change_column_null :tasks, :title. false
    change_column_null :tasks, :start_date. false
    change_column_null :tasks, :end_date. false
  end

  def up
    change_column :tasks, :title, :string, limit: 30
  end
end
