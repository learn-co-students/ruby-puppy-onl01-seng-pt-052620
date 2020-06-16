class Dog 
  
  @@all = []
  @@name
  
  attr_accessor :name
  
  def initialize(name)
    self.name = name
    self.save
  end
  
  def self.all
    @@all 
  end
  
  def self.print_all
    @@all.each do |dog|
    puts dog.name
    end 
  end
  
  def save
    @@all << self
  end
  
  def self.clear_all
    @@all.clear
  end
  
  
end