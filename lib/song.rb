require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods
  include Memorable::ClassMethods

  @@songs = []

  def artist=(artist)
    @artist = artist
  end


  def self.all
    @@songs
  end

end
