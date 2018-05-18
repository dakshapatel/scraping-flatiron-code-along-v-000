require 'nokogiri'
require 'open-uri'

require_relative './course.rb'

class Scraper


 def get_page
   doc = Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
 end 

  

    def print_courses
      #calls on .make_courses
    self.make_courses
    #then iterates over all of the courses that gets created to puts out a list of course offerings
    Course.all.each do |course|
      if course.title
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end

end
