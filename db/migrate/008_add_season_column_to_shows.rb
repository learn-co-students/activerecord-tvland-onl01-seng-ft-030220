class AddSeasonColumnToShows < ActiveRecord::Migration[5.1]
  def change
    self.add_column :shows, :season, :string
  end
end