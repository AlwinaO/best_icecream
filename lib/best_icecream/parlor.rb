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
    doc = Nokogiri::HTML(open("https://spoonuniversity.com/place/25-of-the-most-over-the-top-ice-cream-shops-around-the-world"))
    binding.pry
    title = doc.search(".postContent h3 a").text
    location =
    url = doc.search(".postContent h3 a").first.attr("href")
    description = 


  end

end
