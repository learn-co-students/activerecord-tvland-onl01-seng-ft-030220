class Show < ActiveRecord::Base
    def self.actors_list
        self.actors.map
    end
end