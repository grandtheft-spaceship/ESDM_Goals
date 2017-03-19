class CreateKids < ActiveRecord::Migration[5.0]
  def change
    create_table :kids do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.date :birthdate, null: false
      t.boolean :has_diagnosis, null: false
      t.integer :guardian_id
      t.timestamps
    end
  end
end
