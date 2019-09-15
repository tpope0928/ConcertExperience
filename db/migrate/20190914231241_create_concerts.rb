class CreateConcerts < ActiveRecord::Migration[6.0]
  def change
    create_table :concerts do |t|
      t.date    :date
      t.string  :city
      t.string  :state
      t.integer :artist_id
      t.integer :experiences_id
      
      t.timestamps
    end
  end
end
