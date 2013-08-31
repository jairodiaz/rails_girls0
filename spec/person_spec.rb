require_relative '../person.rb'

describe Person do

  context  "when is harry" do
    it "should be harry" do
      harry = Person.new('harry')
      expect(harry.name).to eq "harry"
    end

    it "should be on the earth" do
      harry = Person.new('harry')
      expect(harry.meters_from_earth).to eq 0
    end
  end

  context "when is jane" do
    it "should be jane" do
      harry = Person.new('jane')
      expect(harry.name).to eq "jane"
    end
  end

  describe "#fly_now" do
    it "should be 100m" do
      harry = Person.new('harry')
      harry.fly_now
      expect(harry.meters_from_earth).to eq 100
    end

  end

  describe "#marry_to" do
    it "should be married to peter" do
      maria, peter = Person.new('maria'), Person.new('peter')
      maria.marry_to peter
      expect(maria.husband).to eq 'peter'
    end
  end

  describe "#divorce" do
    it "should remove the husband's name" do
      harry, peter = Person.new('harry'), Person.new('peter')
      harry.marry_to peter
      harry.divorce
      expect(harry.husband).to be_nil
    end
  end

  describe "#buy_car" do
    it "should have a range rover" do
      car = Car.new
      harry = Person.new('harry')
      harry.buy_car(car)
      expect(harry.car_brand).to eq "range rover"
    end
  end
end

