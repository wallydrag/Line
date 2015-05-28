require 'spec_helper'

describe "Unit" do
  let(:unit1) {Unit.new("mm")}
  let(:unit2) {Unit.new("cm")}
  it "should declare an object of class unit" do
    expect(unit1.symbol).to eq("mm")
    expect(unit2.symbol).to eq("cm")
    expect(unit1.value_in_mm).to eq(1.0)
    expect(unit2.value_in_mm).to eq(10.0)
  end

  describe " Assigning value to unit" do
    it "should assign value to unit for a symbol" do
      expect(Unit.assign_value_to_unit('mm')).to eq(1.0)
      expect(Unit.assign_value_to_unit('cm')).to eq(10.0)
      expect(Unit.assign_value_to_unit('m')).to eq(1000.0)
    end
  end

  describe "Convert unit" do
    it "should convert the unit correctly to desired symbol" do
      unit1.convert_to('cm')
      unit2.convert_to('m')
      expect(unit1.symbol).to eq('cm')
      expect(unit1.value_in_mm).to eq(10.0)
      expect(unit2.symbol).to eq('m')
      expect(unit2.value_in_mm).to eq(1000.0)
    end
  end
end
