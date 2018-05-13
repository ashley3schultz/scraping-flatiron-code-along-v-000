require 'nokogiri'
require 'open-uri'

require_relative './course.rb'

class Scraper
  
  def get_page 
    #uses nokogiri to get HTML fron the web page 
  end 
  
  def get_courses 
    #uses he CSS selector to return an XML elements
    
    doc = Nokogiri::HTML(open("http://flatironschool.com/"))
  end 
  
  def make_courses 
    #iterates over the coarse array - creates new coarse instance
  end 
  
  def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end
  
end



