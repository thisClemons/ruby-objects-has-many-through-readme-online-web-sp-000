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

  def new_meal(customer, total, tip)
    Meal.new(self, customer, total, tip)
  end
end
