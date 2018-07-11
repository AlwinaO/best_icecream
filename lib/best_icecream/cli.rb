# Our CLI controller

class BestIcecream::CLI

  def call

    BestIcecream::Parlor.scrape_parlors
    # binding.pry
    list_parlors
    menu
    goodbye

  end

  def list_parlors
    puts "Welcome to the World's Best Icecream Parlors!"
    @parlors = BestIcecream::Parlor.all
    @parlors.each.with_index(1) do |parlor, i|
      puts "#{i}. #{parlor.name}" #- #{parlor.location} - #{parlor.phone} - #{parlor.url}"
    end

  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the parlor you would like more information on, type list to see the list of parlors or type exit:"
      input = gets.strip.downcase

      if input == "list"
        list_parlors
      elsif input == "exit"
        break
      elsif !(input.to_i > 0 && input.to_i < 16)
        puts "Not sure what you want, please type list or exit."
      else
        the_parlor = @parlors[input.to_i-1]
        # binding.pry
        puts "#{the_parlor.name} - #{the_parlor.location} - #{the_parlor.phone} - #{the_parlor.url}"
      end
    end
  end

  def goodbye
    puts "See you next year for a new list of Icecream Parlors in NYC!"
  end

end
