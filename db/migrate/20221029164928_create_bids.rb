class CreateBids < ActiveRecord::Migration[7.0]
  def change
    create_table :bids do |t|
      t.integer :price
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :art, null: false, foreign_key: true

      t.timestamps
    end
  end
end
