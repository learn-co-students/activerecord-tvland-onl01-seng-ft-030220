class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  
  def actors_list
    list = []
    self.actors.map do |a|
      b = "#{a.first_name} #{a.last_name}"
      list << b
    end
    list
  end
end