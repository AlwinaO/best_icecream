# Our CLI controller

class BestIcecream::CLI

  def call

    list_parlors
    menu
    goodbye

  end

  def list_parlors
    puts "Welcome to the World's Best Icecream Parlors!"
    @parlors = BestIcecream::Icecream.parlor
    @parlors.each.with_index(1) do |parlor, i|
      puts "#{i}. #{parlor.name} - #{parlor.location} - #{parlor.url}"
    end

  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the parlor you would like more information on, type list to see the list of parlors or type exit:"
      input = gets.strip.downcase

      if input.to_i > 0
        the_parlor = @parlors[input.to_i-1]
        puts "#{the_parlor.name} - #{the_parlor.location} - #{the_parlor.url} - #{the_parlor.description}"
      elsif input == "list"
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
