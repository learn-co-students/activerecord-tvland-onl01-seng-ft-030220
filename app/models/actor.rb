class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, thorugh: :characters

    def self.full_name
        "#{first_name} #{last_name}"
    end

    def self.list_roles
        "#{shows.first.characters.first.name} - #{shows.first.name}"
    end
end