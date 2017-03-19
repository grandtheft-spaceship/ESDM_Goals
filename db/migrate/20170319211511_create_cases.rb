class CreateCases < ActiveRecord::Migration[5.0]
  def change
    create_table :cases do |t|
      t.integer :guardian_id
      t.integer :kid_id
      t.integer :therapist_id
      t.integer :teacher_id
      t.timestamps
    end
  end
end
