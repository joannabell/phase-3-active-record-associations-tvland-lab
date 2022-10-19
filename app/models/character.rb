class Character < ActiveRecord::Base
  # join table, look at where the key lives for belongs_to
  belongs_to :show 
  belongs_to :actor 

  def say_that_thing_you_say
    "#{self.name} always says #{self.name}"
  end
end