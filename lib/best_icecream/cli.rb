# Our CLI controller

class BestIcecream::CLI

  def call
    puts "Welcome to the World's Best Icecream Parlors!"
    list_parlors
    menu
    goodbye

  end

  def list_parlors
    puts <<-DOC.gsub /^\s*/, ''
    1. Sweet Jesus - Toronto, Ontario - Why get regular soft serve when you can get a pimped out cone? These over-the-top concoctions range from Birthday Cake Cone to Campfire S’mores and to Krusty the Cone. These cones are so decadent that you will probably leave on a serious sugar high.

    2. Serendipity 3 - NYC & Las Vegas - Ever wondered what it would be like to eat like a king? We’re pretty sure eating Serendipity’s Golden Opulence Sundae would be just like that. Listed in Guinness World Records as the most expensive sundae in the world at a price of $1,000, it’s topped with 23k edible gold. This sundae requires special ingredients from different parts of the world, so make sure to call them 48 hours in advance to request your very own. If shelling out $1,000 on ice cream isn’t your thing, don’t worry. They have other delicious (and cheaper) options too.
    DOC

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
