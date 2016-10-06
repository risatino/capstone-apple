class RemoveBillableHoursFromDocuments < ActiveRecord::Migration[5.0]
  def change
    remove_column :documents, :billable_hours, :integer
    add_column :documents, :billable_hours, :integer, :default => 0
  end
end
