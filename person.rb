class Person
  attr_accessor :name, :meters_from_earth, :husband

  #  attr_accessor: is the same as:
  #
  #  def name
  #    @name
  #  end

  #  def name=(person_name)
  #    @name = person_name
  #  end

  def initialize(name)
    @name = name
    @meters_from_earth = 0
  end

  def fly_now
    @meters_from_earth = 100
  end

  def marry_to husband
    @husband = husband
  end

  def husband
    @husband ? @husband.name : nil
  end

  def buy_car(car)
    @car = car
  end

  def car_brand
    @car.brand
  end

  def divorce
    @husband = nil
  end
end
