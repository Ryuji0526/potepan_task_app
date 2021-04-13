class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :title, presence: true, length: {maximum: 75}
      t.date :start_date, presence
      t.date :end_date
      t.boolean :all_day, acceptance: true, default: false

      t.timestamps
    end
  end
end
