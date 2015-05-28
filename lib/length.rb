class Length
  attr_accessor :magnitude, :unit

  def initialize magnitude, unit
    @unit = unit
    @magnitude = magnitude
  end

  def convert_to unit
    self.magnitude = self.magnitude*(self.unit.value_in_mm/unit.value_in_mm)
    self.unit.convert_to unit.symbol
  end
end
