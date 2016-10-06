class AddDesignerToDocuments < ActiveRecord::Migration[5.0]
  def change
    add_column :documents, :designer, :string
    add_column :documents, :title, :string
    add_column :documents, :due_date, :string
    add_column :documents, :notes, :string
    add_column :documents, :billable_hours, :integer
  end
end
