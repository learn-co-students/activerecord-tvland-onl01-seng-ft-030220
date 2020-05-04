class Character < ActiveRecord::Base
  belongs_to :actor 
  belongs_to :show  
  
  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end
  
  def get_actor_name
    self.actor
   end
   
  def get_show_name
    self.show
  end


  
end