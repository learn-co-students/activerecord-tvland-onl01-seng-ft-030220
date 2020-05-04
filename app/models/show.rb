class Show < ActiveRecord::Base
  has_many :character 
  has_many :actor, through: :character
  belongs_to :network
  
  def actors_list 
    self.character do |t|
      if character.actor_id == actor.id
        "#{actor.first_name}""#{actor.last_name}"
      end 
    end 
  end 
  
  def characters 
    # self.characters
  end 
  
  
end