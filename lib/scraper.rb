require 'open-uri'
require 'nokogiri'
require 'pry'
#require_relative '../fixtures/student-site/index.html'

class Scraper
  #we don't to create instances of Scraper that maintain their own attributes
  #we just need to scrap info and pass to student
  #therefore we only need class methods

  def self.scrape_index_page(index_url) #return an array of hashes, each has represent a student
    #have keys name, location, and profile url
    html = open(index_url)
    doc = Nokogiri::HTML(html)
    student_cards = doc.css(".student-card")
    student_cards.each do |student_card|
      
    end
    binding.pry
    
    
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

