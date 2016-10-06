class RemoveActiveTicketsFromProfiles < ActiveRecord::Migration[5.0]
  def change
    remove_column :profiles, :active_tickets, :integer
    add_column :profiles, :active_tickets, :integer, :default => 0
  end
end
