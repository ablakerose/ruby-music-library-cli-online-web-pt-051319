class Genre
  extend Findable
  extend Persistable::ClassMethods
  extend Nameable::ClassMethods
  include Persistable::InstanceMethods
  attr_accessor :name, :songs

  def self.all
    @@all
  end

  def initialize
    save
    @songs = []
  end

end
