class AddGenreColumnToShows < ActiveRecord::Migration[5.1]
  def change
    self.add_column :shows, :genre, :string
  end
end