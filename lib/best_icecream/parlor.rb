class BestIcecream::Icecream

  def self.parlors
    # return a list of best icecream parlors in the world
    puts <<-DOC.gsub /^\s*/, ''
    1. Sweet Jesus - Toronto, Ontario - Why get regular soft serve when you can get a pimped out cone? These over-the-top concoctions range from Birthday Cake Cone to Campfire S’mores and to Krusty the Cone. These cones are so decadent that you will probably leave on a serious sugar high.

    2. Serendipity 3 - NYC & Las Vegas - Ever wondered what it would be like to eat like a king? We’re pretty sure eating Serendipity’s Golden Opulence Sundae would be just like that. Listed in Guinness World Records as the most expensive sundae in the world at a price of $1,000, it’s topped with 23k edible gold. This sundae requires special ingredients from different parts of the world, so make sure to call them 48 hours in advance to request your very own. If shelling out $1,000 on ice cream isn’t your thing, don’t worry. They have other delicious (and cheaper) options too.
    DOC


    parlor_1 = self.new
    parlor_1.name = "Sweet Jesus"
    parlor_1.location = "Toronto, Ontario"
    parlor_1.description = "Why get regular soft serve when you can get a pimped out cone? These over-the-top concoctions range from Birthday Cake Cone to Campfire S’mores and to Krusty the Cone. These cones are so decadent that you will probably leave on a serious sugar high."
    parlor_1.url = 


  end

end
