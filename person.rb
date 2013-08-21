class Person

  attr_accessor :name, :meters_from_earth, :husband

  def initialize(first_name, car = nil)
    @name = first_name
    @meters_from_earth = 0
    @car = car
  end

  def fly_now
    @meters_from_earth = 100
  end

  def marry_to husband
    @husband = husband
  end

  def husband
    @husband.name
  end

  def car_name
    @car.brand
  end



#  def name
#    @name
#  end

#  def name=(person_name)
#    @name = person_name
#  end

end
