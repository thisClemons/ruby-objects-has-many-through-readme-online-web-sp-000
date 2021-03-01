class Waiter

  attr_reader :customer

  @@all = []

  def initialize(name, years)
    @name = name
    @years = years

    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

end
