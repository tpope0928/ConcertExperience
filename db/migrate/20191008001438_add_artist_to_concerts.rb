class AddArtistToConcerts < ActiveRecord::Migration[6.0]
  def change
    add_column :concerts, :artist, :string
  end
end
