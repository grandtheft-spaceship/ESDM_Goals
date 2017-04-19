class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :body
      t.string :category
      t.integer :level_number
      t.string :parent_report, default: ""
      t.string :therapist_report, default: ""
      t.string :teacher_report, default: ""
      t.integer :survey_id

      t.timestamps
    end
  end
end
