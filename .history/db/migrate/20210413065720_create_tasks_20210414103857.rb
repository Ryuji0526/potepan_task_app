class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :title,
      t.date :start_date, presence: true
      t.date :end_date, presence: true
      t.boolean :all_day, acceptance: true, default: false

      t.timestamps
    end
  end
end
