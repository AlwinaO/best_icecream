class BestIcecream::Scraper

  def self.scrape_parlors
    # return a list of best icecream parlors in the world

    # Go to ny.eater.com and find the parlors; extract the parlor information and instantiate parlors

    doc = Nokogiri::HTML(open("https://ny.eater.com/maps/best-new-ice-cream-shops-new-york-city"))

    parlors = doc.css(".c-mapstack__cards section.c-mapstack__card").slice(1,16)
      #parlors = parlors.slice(1,16)
    parlors.each do |parlor|

      name = parlor.css("div h1").text
      # handle malformed parlor cards
      if name == ""
        next
      end
      name = name[4..-1]
      # if name[0]
      # binding.pry

      location =  parlor.css("div .c-mapstack__address").text
      phone = parlor.css("div .c-mapstack__phone a").text
      url = parlor.css("div .c-mapstack__phone-url a[target]").attr("href").value

      new_parlor = BestIcecream::Parlor.new(name, location, phone, url)
      end

  end


end
