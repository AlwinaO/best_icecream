# Our CLI controller

class BestIcecream::CLI

  def call

    list_parlors
    menu
    goodbye

  end

  def list_parlors
    puts "Welcome to the World's Best Icecream Parlors!"
    @parlors = BestIcecream::Icecream.parlors

  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the parlor you would like more information on, type list to see the list of parlors or type exit:"

      input = gets.strip.downcase
      case input
      when "1"
        puts "More info on parlor 1..."
      when "2"
        puts "More info on parlor 2..."
      when "list"
        list_parlors
      else
        puts "Not sure what you want, please type list or exit."
      end
    end
  end

  def goodbye
    puts "See you next year for a new list of Icecream Parlors from around the World!"
  end

end
