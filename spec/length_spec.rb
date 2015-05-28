require 'spec_helper'

describe "Length" do
  let(:magnitude1) {5}
  let(:magnitude2) {40}
  let(:unit1) {Unit.new("mm")}
  let(:unit2) {Unit.new("cm")}
  let(:length1) {Length.new(magnitude1, unit1)}
  let(:length2) {Length.new(magnitude2, unit2)}

  it "should declare an object of class length" do
    expect(length1.magnitude).to eq(magnitude1)
    expect(length1.unit).to eq(unit1)
    expect(length2.magnitude).to eq(magnitude2)
    expect(length2.unit).to eq(unit2)
  end

  describe "conversion" do
    it "should convert correctly to desired unit" do
      length1.convert_to(Unit.new('m'))
      length2.convert_to(Unit.new('mm'))
      expect(length1.unit.symbol).to eq(Unit.new('m').symbol)
      expect(length1.unit.value_in_mm).to eq(Unit.new('m').value_in_mm)
      expect(length1.magnitude).to eq(0.005)
      expect(length2.unit.symbol).to eq(Unit.new('mm').symbol)
      expect(length2.unit.value_in_mm).to eq(Unit.new('mm').value_in_mm)
      expect(length2.magnitude).to eq(400)
    end
  end
end
