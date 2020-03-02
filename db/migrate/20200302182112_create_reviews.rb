class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :content
      t.float :ratings
      t.integer :user_id
      t.integer :portfolio_id
      t.timestamps
    end
  end
end
