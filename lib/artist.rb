require "pry"

class Artist

attr_accessor :name, :songs
@@all = []

def initialize(name)
@name = name
@songs = []
@@all << self
end

def self.all
  @@all
end

def add_song(song_name)
self.songs << song_name

end

def self.find_or_create_by_name(name)

self.all.select { |artist| artist.name == name }


end


end
