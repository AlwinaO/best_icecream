 class BestIcecream::Parlor
  attr_accessor :name, :location, :phone, :url

  @@all = []

  def initialize(name, location, phone, url)
    @name = name
    @location = location
    @phone = phone
    @url = url

    self.save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  
end
