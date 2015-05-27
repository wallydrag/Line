require 'spec_helper'

describe 'Rectangle' do
  it 'should declare a rectangle with variable and valid inputs' do
    point1 = Point.new 0, 0
    point2 = Point.new 2, 0
    point3 = Point.new 2, 4
    point4 = Point.new 0, 4
    rectangle= Rectangle.new point1, point2, point3, point4
    expect(Point.equal? rectangle.point1, point1).to eq(true)
    expect(Point.equal? rectangle.point2, point2).to eq(true)
    expect(Point.equal? rectangle.point3, point3).to eq(true)
    expect(Point.equal? rectangle.point4, point4).to eq(true)
  end

  it 'should not declare a rectangle with four invalid points' do
    point1 = Point.new 4, 0
    point2 = Point.new 0, 0
    point3 = Point.new 0, 4
    point4 = Point.new 3, 4
    rectangle = Rectangle.new point1, point2, point3, point4
    expect(rectangle).to eq(nil)
  end

  describe 'Rectangle with sides' do
    it 'should declare a rectangle with a point and 2 side lengths' do
      point = Point.new 0, 0
      length = 3
      breadth = 4
      rectangle = Rectangle.new_with_sides point, length, breadth
      expect(Point.equal? rectangle.point1, point).to eq(true)
      expect(Point.equal? rectangle.point2, Point.new(point.x + length, point.y)).to eq(true)
      expect(Point.equal? rectangle.point3, Point.new(point.x, point.y + breadth)).to eq(true)
      expect(Point.equal? rectangle.point4, Point.new(point.x + length, point.y + breadth)).to eq(true)
    end
  end

  describe 'Rectangle with units' do
    it 'should declare a rectangle at origin with length and breadth' do
      side1 = "4m"
      side2 = "12 cm"
      rectangle = Rectangle.new_with_only_side side1, side2
      expect(Point.equal? rectangle.point1, Point.new(0, 0)).to eq(true)
      expect(Point.equal? rectangle.point2, Point.new(4000,0)).to eq(true)
      expect(Point.equal? rectangle.point3, Point.new(0, 120)).to eq(true)
      expect(Point.equal? rectangle.point4, Point.new(4000, 120)).to eq(true)
    end
  end

  describe 'is valid' do
    point1 = Point.new 3, 0
    point2 = Point.new 0, 0
    point3 = Point.new 0, 4

    it 'should return true for valid rectangle points' do
      point4 = Point.new 3, 4
      expect(Rectangle.valid? point1, point2, point3, point4).to eq(true)
    end

    it 'should return false for invalid rectangle points' do
      point4 = Point.new 39, 49
      expect(Rectangle.valid? point1, point2, point3, point4).to eq(false)
    end

    it 'should be valid for square points too' do
      point1 = Point.new 0,0
      point2 = Point.new 3,0
      point3 = Point.new 0,3
      point4 = Point.new 3,3
      expect(Rectangle.valid? point1, point2, point3, point4).to eq(true)
    end
  end

  describe 'area' do
    it 'should return area of the rectangle' do
      point1 = Point.new 0, 0
      point2 = Point.new 2, 0
      point3 = Point.new 2, 4
      point4 = Point.new 0, 4
      rectangle= Rectangle.new point1, point2, point3, point4
      expect(rectangle.area).to eq(8)
    end
  end

  describe 'perimeter' do
    it 'should return perimeter of the rectangle' do
      point1 = Point.new 0, 0
      point2 = Point.new 2, 0
      point3 = Point.new 2, 4
      point4 = Point.new 0, 4
      rectangle= Rectangle.new point1, point2, point3, point4
      expect(rectangle.perimeter).to eq(12)
    end
  end
end
