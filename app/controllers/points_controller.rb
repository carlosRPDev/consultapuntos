class PointsController < ApplicationController
  def index
    @points = Point.all
  end

  def new
    @points = Point.new
  end
end
