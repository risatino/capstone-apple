class RenameCategoryFromProfiles < ActiveRecord::Migration[5.0]
  def change
    rename_column :profiles, :category, :address
  end
end
