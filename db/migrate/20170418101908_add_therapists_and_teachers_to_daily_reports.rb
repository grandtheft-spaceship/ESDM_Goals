class AddTherapistsAndTeachersToDailyReports < ActiveRecord::Migration[5.0]
  def change
    add_column :daily_reports, :therapist_id, :integer, default: 0
    add_column :daily_reports, :teacher_id, :integer, default: 0
  end
end
