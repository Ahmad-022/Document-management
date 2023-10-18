class RemovePositionFromDocuments < ActiveRecord::Migration[7.0]
  def change
    remove_column :documents, :position, :integer
  end
end
