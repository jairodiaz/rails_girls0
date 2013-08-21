require './person.rb'

describe "person" do

  it "should be harry" do

    #this is the block
    harry = Person.new('harry')
    expect(harry.name).to eq "harry"
  end

  it "should be peter" do
    harry = Person.new('peter')
    expect(harry.name).to eq "peter"
  end

  it "should be on the earth" do
    harry = Person.new('harry')
    expect(harry.meters_from_earth).to eq 0
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
      harry = Person.new('harry')
      peter = Person.new('peter')
      harry.marry_to peter
      expect(harry.husband).to eq 'peter'
    end
  end

end

