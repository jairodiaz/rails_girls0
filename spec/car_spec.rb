require_relative '../car.rb'

describe Car do
  it "should be a range rover" do
    car = Car.new
    expect(car.brand).to eq 'range rover'
  end
end
