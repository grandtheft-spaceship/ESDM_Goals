class CreateCases < ActiveRecord::Migration[5.0]
  def change
    create_table :cases do |t|
      t.integer :guardian_id, default: 0
      t.integer :kid_id, default: 0
      t.integer :therapist_id, default: 0
      t.integer :teacher_id, default: 0
      t.timestamps
    end
  end
end
