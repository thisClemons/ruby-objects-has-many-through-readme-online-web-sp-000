class Waiter

  attr_accessor :customer

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

  def meals
    Meal.all.select {|m| m.waiter == self}
  end

  def best_tipper
    best_tip = Meal.all[0].tip
    best_tipper = Meal.all[0].customer

    Meal.all.each do |meal|
      if meal.tip > best_tip
        best_tipper = meal.customer
        best_tip = meal.tip
      end
      best_tipper
    end
  end
end
