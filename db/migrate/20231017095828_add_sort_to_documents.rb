class AddSortToDocuments < ActiveRecord::Migration[7.0]
  def change
    add_column :documents, :sort, :integer
  end
end
