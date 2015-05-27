class Square < Rectangle
  attr_accessor :point1, :point2, :point3, :point4

  def self.new_with_sides point1, side
    point2 = Point.new(point1.x + side, point1.y)
    point3 = Point.new(point1.x, point1.y + side)
    point4 = Point.new(point2.x, point3.y )
    Square.new point1, point2, point3, point4
  end

  def self.valid? point1, point2, point3, point4
    line1_tmp = Line.new point1, point2
    line2_tmp = Line.new point2, point3
    line3_tmp = Line.new point3, point4
    line4_tmp = Line.new point4, point1
    line5_tmp = Line.new point3, point1
    line6_tmp = Line.new point4, point2
    lines = [line1_tmp, line2_tmp, line3_tmp, line4_tmp, line5_tmp, line6_tmp]
    lines = lines.sort {|x, y| x.length <=> y.length}
    line1 = lines[0]
    line2 = lines[2]
    line3 = lines[1]
    line4 = lines[3]
    diagonal1 = lines[4]
    diagonal2 = lines[5]
    (
      Line.orthogonal?(diagonal1, diagonal2) and line1.length == line2.length and
      line2.length == line3.length and line3.length == line4.length
    )

  end

end
