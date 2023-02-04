class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.string :status
      t.datetime :date_from
      t.datetime :date_to

      t.timestamps
    end
  end
end
