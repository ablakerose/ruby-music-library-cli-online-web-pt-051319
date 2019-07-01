class Song
  extend Findable
  extend Persistable::ClassMethods
  extend Nameable::ClassMethods
  include Persistable::InstanceMethods
  attr_accessor :name
  attr_reader :genre

  def self.all
    @@all
  end

  def initialize
    save
  end

end
