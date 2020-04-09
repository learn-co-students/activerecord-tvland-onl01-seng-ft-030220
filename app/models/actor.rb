class Actor < ActiveRecord::Base
  has_many :characters 
  has_many :shows, through: :characters
  
  def full_name
    name = "#{self.first_name} #{self.last_name}"
  end 
  
  def list_roles
    arr_characters=[]
    arr_shows=[] 
    char_show=[]
    
    self.characters.each do |character|
      arr_characters << character.name 
    end 
    
    self.shows.each do |show|
      arr_shows << show.name 
    end 
    
    arr_characters.each do |e|
      char_show << e+" - "+arr_shows[arr_characters.index(e)]
    end 
    
    char_show
      
  end 
  
end