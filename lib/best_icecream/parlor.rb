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
    binding.pry
    name = doc.css("div .c-mapstack__card-hed div h1").first.text
    location = doc.css("div .c-mapstack__address").first.text
    phone = doc.search("div .c-mapstack__ info div .c-mapstack__phone desktop-only")
    url = url = doc.css("div a link-icon").first
    # description =


  end

end
