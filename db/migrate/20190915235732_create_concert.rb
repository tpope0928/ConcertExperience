class CreateConcert < ActiveRecord::Migration[6.0]
  def change
    create_table :concerts do |t|
      t.string :city
      t.string :state
      t.string :venue
      t.date :date

      t.timestamps null:false
    end
  end
end
