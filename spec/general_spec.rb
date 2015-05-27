require 'spec_helper'
include General

describe 'unit_converter' do
  it 'should correctly convert units' do
    length1 = "12cm"
    length2 = "13 m"
    expect(General.unit_converter(length1)).to eq(120)
    expect(General.unit_converter(length2)).to eq(13000)
  end
end
