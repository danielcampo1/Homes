class Homes::Cli

    def call
        approved
        menu
    end

    def approved
        puts "You got Pre-Approved!"
        puts "Lets look at some homes in the greater Austin area."

    end

    def menu
        input = nil
        while input != "exit"
            puts "type \"find\" or \"exit\" to get where your going."
            input = gets.strip
            case input
            when "find"
                if Homes::Houses.all.empty?
                 scrape_houses
            end
                list_houses
                gets_house 
            when "exit"
                goodbye 
            else 
                puts "oops! please select the correct one."
            end
        end
    end

    def scrape_houses

        @home = Homes::Scrape.scrape_house_g
    
    end

    def list_houses

        Homes::Houses.all.each.with_index(1) {|house,i| puts "#{i}. - #{house.price} - #{house.address} - #{house.overview} " }
    
    end
       

    def gets_house

        puts "
        Which house would you like to look into?"

        input = gets

        h = Homes::Houses.all[input.to_i - 1] 
    
        puts h.url

    end


    def goodbye
        puts "Don't take to long your forever home is waiting!"
    end

end
