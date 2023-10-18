class RenameColumnSortToPositionInDocuments < ActiveRecord::Migration[7.0]
  def change
    rename_column :documents, :sort, :position
  end
end
