require 'nokogiri'
require 'open-uri'

class Homes::Scrape


    def self.scrape_house_g
    url = open("https://www.austinrealestate.com/lake-austin.php?sortorder=ASC-ListingPrice")
    doc = Nokogiri::HTML(url)
    
     doc.css("article.listing").each do |house| 
        price = house.css('div.mediaBody hgroup p').text
        address = house.css('div.mediaBody hgroup h3').text
        overview = house.css('div.mediaBody hgroup + p br')[0].next_sibling.text
        url = house.css("div.mediaImg a").first.attr("href")
        Homes::Houses.new(price, address, overview, url)
  
        end
        
       
    end


end

