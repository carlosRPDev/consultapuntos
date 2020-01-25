module PointsHelper
  def form_title
     @point.new_record? ? "Publicar Nuevo Punto" : "Modificar Punto"
  end
end
