class CreateDailyReports < ActiveRecord::Migration[5.0]
  def change
    create_table :daily_reports do |t|
      t.integer :user_id, null: false
      t.integer :case_id, null: false

      t.timestamps
    end
  end
end
