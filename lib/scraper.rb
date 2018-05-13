require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './course.rb'

class Scraper
  
  def get_page 
    #uses nokogiri to get HTML fron the web page 
    doc = Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
    #binding.pry
  end 
  
  def get_courses 
        doc.css(".post").first.css("h2").text
    #uses he CSS selector to return an XML elements
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

Scraper.new.get_page



