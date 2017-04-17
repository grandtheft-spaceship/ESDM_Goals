class CreateGoals < ActiveRecord::Migration[5.0]
  def change
    create_table :goals do |t|
      t.string :body
      t.integer :case_id
      
      t.timestamps
    end
  end
end
