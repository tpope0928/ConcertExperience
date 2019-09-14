class CreateConcerts < ActiveRecord::Migration[6.0]
  def change
    create_table :concerts do |t|

      t.timestamps
    end
  end
end
