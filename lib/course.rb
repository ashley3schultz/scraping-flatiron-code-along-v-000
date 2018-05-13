class Course 
  attr_accessor :title, :schedule, :description
  
  @@all = []
  
  def initialize 
    @@all << self 
  end 
  
  def self.all 
    @@all
  end 
  
  def self.reset_all
    @@all.clear 
  end 
  
  def get_page 
    
  end 
  
  def get_courses 
    
  end 
  
  def make_courses 
    #iterates over the coarse array - creates new coarse instance
  end 
  
  def print_courses 
    
    
  end 
  
  
end 

