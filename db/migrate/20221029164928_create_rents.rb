class CreateRents < ActiveRecord::Migration[7.0]
  def change
    create_table :rents do |t|
      t.integer :price
      t.date :start_date
      t.date :end_date
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :art, null: false, foreign_key: true

      t.timestamps
    end
  end
end
