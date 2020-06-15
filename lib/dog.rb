require 'pry'

class Dog

  attr_accessor :name, :save
  # Same as writing:
  # def name=(name)  ==>writer
  #   @name = name
  # end
  # def name(name)  ==>reader
  #   @name
  # end

  @@all = []

  def initialize(name)
    @name = name
    save
    # @@all << self
  end

  def self.all
    @@all
  end

  def self.print_all
    @@all.each do |name|
      puts name.name
    end
  end

  # def self.print_all
  #   # @@all.uniq
  #   puppy_array = []
  #   @@all.each { |name| puppy_array[name] += 1 }
  #   # binding.pry
  #   puts "#{name}"
  # end

  def self.clear_all
    @@all.clear
  end

  def save
    @@all << self
  end



end