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

  def update
    point = Point.find(params[:id])
    if point.update(point_params)
      redirect_to points_path, notice: "El punto fue modificado con exito"
    else
      render :edit
    end
  end

  def destroy
    point = Point.find(params[:id])
    point.destroy

    redirect_to points_path, notice: "El punto fue eliminado con exito"
  end

  private
    def point_params
      params.require(:point).permit(:name, :ccosto, :tecnologia, :observacion, :ipradio, :iptele, :ipcom)
    end

end
