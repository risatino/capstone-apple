class AddImageToDocuments < ActiveRecord::Migration[5.0]
  def change
    add_column :documents, :image, :string
  end
end
