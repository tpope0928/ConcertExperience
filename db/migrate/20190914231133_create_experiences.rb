class CreateExperiences < ActiveRecord::Migration[6.0]
  def change
    create_table :experiences do |t|
      t.belongs_to :user, index:true
      t.integer :rating
      t.string  :comment
      t.integer :artist_id
      t.integer :concert_id
    
      t.timestamps
    end
  end
end
