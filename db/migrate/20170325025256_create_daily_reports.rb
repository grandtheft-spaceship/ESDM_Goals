class CreateDailyReports < ActiveRecord::Migration[5.0]
  def change
    create_table :daily_reports do |t|
      t.integer :user_id, default: 0
      t.integer :case_id, default: 0

      t.timestamps
    end
  end
end
