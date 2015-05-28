class Unit
  attr_accessor :symbol, :value_in_mm
  Millimeter = 'mm'
  Centimeter = 'cm'
  Meter = 'm'

  def self.assign_value_to_unit symbol
    if(symbol == self::Meter)
      return 1000.0
    elsif (symbol == self::Centimeter)
      return 10.0
    else
      return 1.0
    end
  end

  def initialize symbol
    @symbol = symbol
    @value_in_mm = Unit.assign_value_to_unit(symbol)
  end

  def convert_to symbol
    @symbol = symbol
    @value_in_mm = Unit.assign_value_to_unit(symbol)
  end

end
