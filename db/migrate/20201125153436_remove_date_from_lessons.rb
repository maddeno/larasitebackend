class RemoveDateFromLessons < ActiveRecord::Migration[6.0]
  def change

    remove_column :lessons, :date, :string
  end
end
