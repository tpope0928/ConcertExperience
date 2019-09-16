class CreateExperience < ActiveRecord::Migration[6.0]
  def change
    create_table :experiences do |t|

      t.text    :comment
      t.integer :rating
      t.integer :user_id
      t.integer :concert_id

      t.timestamps 
    end
  end
end
