class ChangeUserIdInDailyReports < ActiveRecord::Migration[5.0]
  def change
    rename_column :daily_reports, :user_id, :guardian_id
  end
end
