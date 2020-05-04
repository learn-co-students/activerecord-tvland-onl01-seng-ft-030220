class AddCharacterToActor < ActiveRecord::Migration[4.2]
  def change
  add_column(:actor, :character_id, :integer)
  end
end