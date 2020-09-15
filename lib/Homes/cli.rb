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
                list_houses 
            when "exit"
                goodbye 
            when "1"
               house_1
            when "2"
                house_2
            when "3"
                house_3
            else 
                puts "oops! please select the correct one."
            end
        end
    end

   def list_houses
    puts <<-heredoc
    1. $800,000 - 704 Lakewood Hills Ter - 4/4 -  0.47 acres.
    2. $899,000 - 5802 Westslope Dr - 4/2 - 0.34 acres.
    3. $1,000,000 - 5306 Tortuga Trl - 3/3 - 0.18 acres. 

--- Pick a number to find out more. ---

    heredoc
   
   end

    def house_1
        puts <<-heredoc
    1. $800,000 - 704 Lakewood Hills Ter - 4/4 -  0.47 acres.

    heredoc

    @home = Homes::Houses.deal(1)
    end

    def house_2
        puts <<-heredoc 
    2. $899,000 - 5802 Westslope Dr - 4/2 - 0.34 acres.

    heredoc
    end

    def house_3
        puts <<-heredoc
    3. $1,000,000 - 5306 Tortuga Trl - 3/3 - 0.18 acres. 

    heredoc
    end

    def goodbye
        puts "Don't take to long your forever home is waiting!"
    end


end
