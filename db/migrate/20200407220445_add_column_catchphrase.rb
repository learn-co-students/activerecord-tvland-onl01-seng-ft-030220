class AddColumnCatchphrase < ActiveRecord::Migration[5.2]
  
  def change
    add_column :character, :catchphrase, :string
  end
  
end
