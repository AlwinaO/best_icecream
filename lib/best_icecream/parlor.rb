class BestIcecream::Parlor
  attr_accessor :name, :location, :phone, :url

  @@all = []

  def initialize(name, location, phone, url)
    @name = name
    @location = location
    @phone = phone
    @url = url
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

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
      # handle malformed parlor cards
      if name == ""
        next
      end
      name = name[4..-1]
      # if name[0]
      location = parlor.css("div .c-mapstack__address").text
      phone = parlor.css("div .c-mapstack__phone a").text
      url = parlor.css("div .c-mapstack__phone-url a[target]").attr("href").value

      new_parlor = BestIcecream::Parlor.new(name, location, phone, url)
      new_parlor.save

      end
      binding.pry
  end

end
