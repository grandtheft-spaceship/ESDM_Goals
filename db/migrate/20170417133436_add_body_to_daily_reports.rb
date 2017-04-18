class AddBodyToDailyReports < ActiveRecord::Migration[5.0]
  def change
    add_column :daily_reports, :body, :text
  end
end
