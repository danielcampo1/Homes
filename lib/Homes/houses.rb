class Homes::Houses 

attr_accessor :price, :address, :overview, :url, :all
    
    @@all =[]

    def initialize(price, address, overview, url)
        @price =price
        @address =address
        @overview =overview
        @url = url
        
        @@all << self
 
    end

        def self.all
            @@all
        end


end