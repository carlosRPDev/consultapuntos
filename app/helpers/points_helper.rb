module PointsHelper
  def form_title
     @point.new_record? ? "Agregar Nuevo Punto" : "Modificar Punto"
  end
end
