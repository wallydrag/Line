module General
  def self.unit_converter(length)
    unit = length
    magnitude = length.chomp.to_i
    if((unit.include?"mm") || (unit.include?"millimeter"))
    elsif ((unit.include?"cm") || (unit.include?"centimeter"))
      magnitude = magnitude*10
    else
      magnitude = magnitude*1000
    end
    return magnitude
  end
end
