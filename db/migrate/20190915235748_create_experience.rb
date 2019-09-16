class CreateExperience < ActiveRecord::Migration[6.0]
  def change
    create_table :experiences do |t|

      t.text    :comment
      t.integer :rating

      t.timestamps 
    end
  end
end
