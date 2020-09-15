class Homes::Houses
    attr_accessor :price, :address, :acres, :rr, :sq_foot, :yr_built, :mls, :pool, :ele, :middle, :high 
    
    def self.deal(num)

    return

    end

    def returns
        info_1 = []
        info_2 = []

        info_1 << self.house1_g
        info_1 << self.house2_g
        info_1 << self.house3_g

        info_2 << self.house1_a
        info_2 << self.house2_a
        info_2 << self.house3_a

        info_1
        info_2
    end

    def house1_g
        @general = Homes::Scrape.scrape_house_g
    
        house = self.new
        house.price = doc.css("article.listing#listing-5335554 hgroup p").text
        house.address = 
        house.acres = 
        house.rr = 

        house
    end


    def house1_a
        @detail = Homes::Scrape.scrape.house1_a

        house.self.new
        house.sq_feet = 
        house.yr_built = 
        house.mls = 
        house.pool =
        house.ele = 
        house.middle = 
        house.high = 

        house 
    end

    def house2_a
        @detail = Homes::Scrape.scrape.house2_a

        house.self.new
        house.sq_feet = 
        house.yr_built = 
        house.mls = 
        house.pool =
        house.ele = 
        house.middle = 
        house.high = 

        house 
    end

    def house3_a
        @detail = Homes::Scrape.scrape.house3_a

        house.self.new
        house.sq_feet = 
        house.yr_built = 
        house.mls = 
        house.pool =
        house.ele = 
        house.middle = 
        house.high = 

        house 
    end






end