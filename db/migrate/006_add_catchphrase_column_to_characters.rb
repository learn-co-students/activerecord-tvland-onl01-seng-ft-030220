class AddCatchphraseColumnToCharacters < ActiveRecord::Migration[5.1]
  def change
    self.add_column :characters, :catchphrase, :string
  end
end