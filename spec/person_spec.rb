require_relative '../person.rb'

describe Person do

  context  "when is harry" do
    it "should be harry" do
      harry = Person.new('harry')
      expect(harry.name).to eq "harry"
    end

    it "should have a range rover" do
      car = Car.new
      harry = Person.new('harry', car)
      expect(harry.car_brand).to eq "range rover"
    end

    it "should be on the earth" do
      harry = Person.new('harry')
      expect(harry.meters_from_earth).to eq 0
    end
  end

  context "when is peter" do
    it "should be peter" do
      harry = Person.new('peter')
      expect(harry.name).to eq "peter"
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
      harry, peter = Person.new('harry'), Person.new('peter')
      harry.marry_to peter
      expect(harry.husband).to eq 'peter'
    end
  end
end

