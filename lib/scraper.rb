require 'open-uri'
require 'nokogiri'
require 'pry'
require_relative './fixtures/student-site'

class Scraper
  #we don't to create instances of Scraper that maintain their own attributes
  #we just need to scrap info and pass to student
  #therefore we only need class methods

  def self.scrape_index_page(index_url) #return an array of hashes, each has represent a student
    #have keys name, location, and profile url
    doc = Nokogiri::HTML(index_url)
    binding.pry
    
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

