class AddReferencesInTransactions < ActiveRecord::Migration[6.1]
  def change
    add_reference :transactions, :from, foreign_key: {to_table: :users}
    add_reference :transactions, :to, foreign_key: {to_table: :users}
    add_reference :transactions, :book, foreign_key: true, as: "book_id"
  end
end
