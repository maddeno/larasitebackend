class RemoveTimeFromLessons < ActiveRecord::Migration[6.0]
  def change

    remove_column :lessons, :time, :string
  end
end
