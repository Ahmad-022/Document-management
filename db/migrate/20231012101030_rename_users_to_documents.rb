class RenameUsersToDocuments < ActiveRecord::Migration[7.0]
  def change
    rename_table :users, :documents
  end
end
