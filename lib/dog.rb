# Add your code here
class Dog

  attr_accessor :name
  @@all = []
  @@all_names = []

  def initialize(name)
    @name = name
    @@all_names << name
    save
  end

  def self.all
    @@all
  end

  def self.clear_all
    @@all = []
    @@all_names = []
  end

  def self.print_all
    puts @@all_names
  end

  def save
    @@all << self
  end
end
