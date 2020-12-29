class RemoveAdminIdFromGigs < ActiveRecord::Migration[6.0]
  def change

    remove_column :gigs, :admin_id, :integer
  end
end
