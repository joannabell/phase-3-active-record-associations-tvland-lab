class Show < ActiveRecord::Base
  # inverse of actor.rb
  has_many :characters
  has_many :actors, through: :characters

  belongs_to :network

  # returns an Array of the full names of each actor associated with a show
  # returns an Array means .map
  # remember a show should have many actors through characters
  # must come from the actors table
  # it may help to use another association macro to access the actors for the show
  # full_name method was just created in actor.rb, because they're associated, we can use the method

  def actors_list
    self.actors.map do |actor|
      actor.full_name
    end
  end
end