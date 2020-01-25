class PointsController < ApplicationController
  def index
    @point = Point.all
  end

  def new
    @point = Point.new
  end

  def create
    @point = Point.new(point_params)
    if @point.save
      redirect_to points_path, notice: "El punto fue Ingresado con éxito"
    else
      render :new
    end
  end

  def show
    @point = Point.find(params[:id])
  end

  def edit
    @point = Point.find(params[:id])
  end

  private
    def point_params
      params.require(:point).permit(:name, :ccosto, :tecnologia, :observacion, :ipradio, :iptele, :ipcom)
    end

end
