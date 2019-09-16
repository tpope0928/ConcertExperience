class CreateArtist < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :genre
      t.integer :concert_id

      t.timestamps null: false
    end
  end
end
