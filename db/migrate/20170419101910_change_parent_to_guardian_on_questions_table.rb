class ChangeParentToGuardianOnQuestionsTable < ActiveRecord::Migration[5.0]
  def change
    rename_column :questions, :parent_report, :guardian_report
  end
end
