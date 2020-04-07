class AddDayColumnToShows < ActiveRecord::Migration[5.1]
  def change
    self.add_column :shows, :day, :string
  end
end