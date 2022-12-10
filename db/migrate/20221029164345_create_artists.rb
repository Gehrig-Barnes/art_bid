class CreateArtists < ActiveRecord::Migration[7.0]
  def change
    create_table :artists do |t|
      t.string :username
      t.string :password
      t.string :email
      t.string :about
      t.string :image

      t.timestamps
    end
  end
end
