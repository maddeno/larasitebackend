class CreateGigs < ActiveRecord::Migration[6.0]
  def change
    create_table :gigs do |t|
      t.integer :admin_id
      t.string :client_name
      t.string :client_email
      t.string :client_phone
      t.string :date
      t.string :start_time
      t.string :end_time
      t.string :location
      t.string :description
      t.boolean :public
      t.string :rep
      t.string :status

      t.timestamps
    end
  end
end
