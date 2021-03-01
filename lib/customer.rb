class Customer

  @@all = []

  def initialize(name, age)
    @name = name
    @age = age

    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def new_meal(waiter, total, tip)


  end

end
