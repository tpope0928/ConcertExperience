class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.integer :experiences_id
      t.integer :concert_id

      t.timestamps
    end
  end
end
