class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :category
      t.string :description
      t.integer :user_id
      t.integer :active_tickets

      t.timestamps
    end
  end
end
