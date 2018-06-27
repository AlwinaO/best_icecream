class BestIcecream::Icecream
  attr_accessor :name, :location, :description, :url

  def self.parlor
    # return a list of best icecream parlors in the world

    self.scrape_parlors
  end

  def self.scrape_parlors
  # Go to spoonuniversity and find the parlors; extract the parlor information and instantiate a new parlor
    parlors = []

    parlors << self.scrape_spoon

    parlors
  end

  def self.scrape_spoon
    doc = Nokogiri::HTML(open("https://ny.eater.com/maps/best-new-ice-cream-shops-new-york-city"))

    parlors = doc.css(".c-mapstack__cards section.c-mapstack__card")
      parlors = parlors.slice(1,16)
    parlors.each do |parlor|
      name = parlor.css("div h1").text
      location = parlor.css("div .c-mapstack__address").text
      phone = parlor.css("div .c-mapstack__phone a").text
      binding.pry
    end
    url = parlor.css("div .c-mapstack__phone-url div a").attr("href")
    
  end

end
