class CreateInvestments < ActiveRecord::Migration[6.0]
  def change
    create_table :investments do |t|
      t.float :purchase_price
      t.integer :num_of_shares
      t.string :purchase_date
      t.integer :portfolio_id
      t.integer :stock_id
      t.timestamps
    end
  end
end
