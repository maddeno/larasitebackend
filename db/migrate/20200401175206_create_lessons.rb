class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.integer :admin_id
      t.string :client_name
      t.string :client_email
      t.string :client_phone
      t.string :date
      t.string :time
      t.string :location
      t.string :student_name
      t.integer :student_age
      t.string :student_experience
      t.string :student_goals
      t.string :status

      t.timestamps
    end
  end
end
