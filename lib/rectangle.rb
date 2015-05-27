class Rectangle
  attr_accessor :point1, :point2, :point3, :point4

  def self.new_with_sides point1, length, breadth
    point2 = Point.new(point1.x + length, point1.y)
    point3 = Point.new(point1.x, point1.y + breadth)
    point4 = Point.new(point2.x, point3.y )
    Rectangle.new point1, point2, point3, point4
  end

  def new point1, point2, point3, point4
    super if valid? point1, point2, point3, point4
  end

  def self.valid? point1, point2, point3, point4
    line1 = Line.new point1, point2
    line2 = Line.new point2, point3
    line3 = Line.new point3, point4
    line4 = Line.new point4, point1

    (
      Line.orthogonal?(line1, line2) and Line.orthogonal?(line3, line4) and
      (line1.length == line3.length) and (line2.length == line4.length)
    )
  end

  def initialize *arg
    @point1 = arg[0]
    @point2 = arg[1]
    @point3 = arg[2]
    @point4 = arg[3]
  end

  def area
    line1 = Line.new @point1, @point2
    line2 = Line.new @point2, @point3
    return line1.length * line2.length
  end

  def perimeter
    line1 = Line.new @point1, @point2
    line2 = Line.new @point2, @point3
    return 2 * (line1.length + line2.length)
  end
end
