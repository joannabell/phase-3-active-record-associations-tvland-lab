class Actor < ActiveRecord::Base
    # inverse of show.rb
    has_many :characters
    has_many :shows, through: :characters

    # returns the first and last name of an actor
    def full_name
       "#{first_name} #{last_name}" 
    end

    # lists (map) all of the characters that actor has 
    # alongside the show that the character is in
    def list_roles
        self.characters.map do |char|
            "#{char.name} - #{char.show.name}"
        end
    end

    # .alphabetical lists all actors by last name alphabetical
    def self.alphabetical
        self.order(:last_name)
    end

    # .most_gigs returns the actor with the most characters
    def self.most_gigs 
        self.all.sort do |a, b|
            a.characters.count <=> b.characters.count 
        end.first 
    end
end