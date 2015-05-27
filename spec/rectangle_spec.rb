require 'spec_helper'

describe 'Rectangle' do
  it 'should declare a rectangle with variable and valid inputs' do
    point1 = Point.new 0, 0
    point2 = Point.new 2, 0
    point3 = Point.new 2, 4
    point4 = Point.new 0, 4
    point2_new = Point.new 3, 0
    point3_new = Point.new 0, 4
    point4_new = Point.new 3, 4
    rectangle_new = Rectangle.new point1, 3, 4
    rectangle= Rectangle.new point1, point2, point3, point4
    expect(Point.equal? rectangle.point1, point1).to eq(true)
    expect(Point.equal? rectangle.point2, point2).to eq(true)
    expect(Point.equal? rectangle.point3, point3).to eq(true)
    expect(Point.equal? rectangle.point4, point4).to eq(true)
    expect(Point.equal? rectangle_new.point1, point1).to eq(true)
    expect(Point.equal? rectangle_new.point2, point2_new).to eq(true)
    expect(Point.equal? rectangle_new.point3, point3_new).to eq(true)
    expect(Point.equal? rectangle_new.point4, point4_new).to eq(true)
  end

  it 'should not declare a rectangle with four invalid points' do
    point1 = Point.new 0, 0
    point2 = Point.new 2, 0
    point3 = Point.new 3, 4
    point4 = Point.new 0, 4
    rectangle = Rectangle.new point1, point2, point3, point4
    expect(rectangle).to eq(nil)
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
