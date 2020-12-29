class RemoveAdminIdFromLessons < ActiveRecord::Migration[6.0]
  def change

    remove_column :lessons, :admin_id, :integer
  end
end
