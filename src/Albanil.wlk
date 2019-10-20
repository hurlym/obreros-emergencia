import Obrero.*

class  Albanil inherits Obrero{
	
	override method jornadaLaboral(obra){
		//GASTO DE LADRILLOS PRODUCIDOS POR EL ALBAÑIL
		obra.ladrillos(obra.ladrillos() - 100)
		
		//AGREGO LOS METROS CUADRADOS DE PARED REALIZADOS POR LA JORNADA LABORAL
		obra.metrosCuadradosConstruidos(obra.metrosCuadradosConstruidos() + 3)
		
	}
}
