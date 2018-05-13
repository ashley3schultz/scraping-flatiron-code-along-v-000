require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './course.rb'

class Scraper
  
  def get_page 
    #uses nokogiri to get HTML fron the web page 
    doc = Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
  end 
  
  def get_courses
    get_page.doc.each { |c| 
    title = c.css(".post")
      t = c.css("h2").text
      #t = Course.new
      binding.pry
      
    }
    #doc.css(".post").first.css("h2").text
    #doc.css(".post").first.css(".date").text
    #doc.css(".post").first.css("p").text
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



