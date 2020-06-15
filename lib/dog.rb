class Dog 
  
    attr_accessor :name 
  #has a class variable, @@all, that points to an array [].  
  @@all = []
  
  #initializes with one argument - a name 
    def initialize (name) 
    #has a name 
      @name = name 
  #gets called inside initialize when a new Dog is created 
      self.save
    end 
    
    #is a class method returns all dog instances 
    def self.all
      @@all 
    end 
    #is a class method that empties the @@all array of all existing dogs 
    def self.clear_all
      @@all.clear 
    end 
    #is a class method that puts out the name of each dog to the terminal 
    def self.print_all
      @@all.each do |dog|
        puts dog.name 
    end 
  end 
  #adds this dog instance to the @@all array when called 
  
    def save
      self.class.all << self 
    end 
  end 