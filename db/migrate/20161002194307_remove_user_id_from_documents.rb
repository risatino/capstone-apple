class RemoveUserIdFromDocuments < ActiveRecord::Migration[5.0]
  def change
    remove_column :documents, :user_id, :integer
  end
end
