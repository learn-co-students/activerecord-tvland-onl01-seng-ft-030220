class Character < ActiveRecord::Base
    belongs_to :show, :actor

    def self.say_that_thing_you_say
        "#{name} always says: #{catchphrase}"
    end
end