class CreateWithdrawals < ActiveRecord::Migration[6.1]
  def change
    create_table :withdrawals do |t|
      t.float :amount
      t.string :currency
      t.float :fee

      t.timestamps
    end
  end
end
