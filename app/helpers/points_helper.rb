module PointsHelper
  def form_title
     @point.new_record? ? "Agregar Nuevo Punto de venta" : "Modificar Punto de venta"
  end
end
