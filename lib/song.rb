class Song
  extend Memorable
  attr_accessor :name
  attr_reader :artist
  @@songs = []

  def initialize
    @@songs << self
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end

  def self.find_by_name(name)
    self.all.detect {|song| song.name == name }
  end
end
