class AddTherapistsAndTeachersToDailyReports < ActiveRecord::Migration[5.0]
  def change
    add_column :daily_reports, :therapist_id, :integer, default: ""
    add_column :daily_reports, :teacher_id, :integer, default: ""
    add_index :daily_reports, :therapist_id
    add_index :daily_reports, :teacher_id
  end
end
