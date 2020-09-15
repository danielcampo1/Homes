require 'nokogiri'
require 'open-uri'

class Homes::Scrape

def self.scrape_house_g
    url = open("https://www.austinrealestate.com/lake-austin.php?sortorder=ASC-ListingPrice")
    doc = Nokogiri::HTML(url)
    # listing = doc.css("article.listing")[0]

    #     house = self.new
    #     house.price = listing.css("div.mediaBody hgroup p").text
    #     house.address = listing.css("div.mediaBody hgroup h3").text
    #     house.acres = 
    #     house.rr = 

binding.pry
end

def self.scarpe_house1_a
    url = open("https://www.austinrealestate.com/listing/5335554-704-lakewood-hills-ter-austin-tx-78732/")
    house1 = Nokogiri::HTML(url)
end

def self.scarpe_house2_a
    url = open("https://www.austinrealestate.com/listing/2470072-5802-westslope-dr-austin-tx-78731/")
    house2 = Nokogiri::HTML(url)
end

def self.scarpe_house3_a
    url = open("https://www.austinrealestate.com/listing/2196576-5306-tortuga-trl-austin-tx-78731/")
    house3 = Nokogiri::HTML(url)
end

end
