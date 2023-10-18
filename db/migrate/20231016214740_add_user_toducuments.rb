class AddUserToducuments < ActiveRecord::Migration[7.0]
  def change
    add_reference :documents, :user, index: true, foreign_key: true
  end
end
