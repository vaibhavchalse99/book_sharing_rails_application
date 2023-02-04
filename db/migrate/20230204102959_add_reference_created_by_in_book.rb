class AddReferenceCreatedByInBook < ActiveRecord::Migration[6.1]
  def change
    add_reference :books, :user, foreign_key: true, as: "created_by"
  end
end
