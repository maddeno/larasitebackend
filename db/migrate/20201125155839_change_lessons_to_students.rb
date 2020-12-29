class ChangeLessonsToStudents < ActiveRecord::Migration[6.0]
  def change
    rename_table :lessons, :students
  end
end
