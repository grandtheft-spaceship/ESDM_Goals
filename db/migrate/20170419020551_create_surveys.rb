class CreateSurveys < ActiveRecord::Migration[5.0]
  def change
    create_table :surveys do |t|
      t.string :title
      t.integer :case_id

      t.timestamps
    end
  end
end
