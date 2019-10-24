import Obrero.*
import uocra.*

class Plomero inherits Obrero{
	
	override method jornadaLaboral(obra){
		//DESCUENTO LOS METROS DE CAÑO Y ARANDELAS UTILIZADOS
		obra.metrosDeCanio(obra.metrosDeCanio() - 10)
		obra.arandelas(obra.arandelas() - 30)
		
		jornalesAdeudados +=1
		
		//AGREGO LOS METROS DE CAÑO A LA OBRA POR EL TRABAJO DE LA JORNADA
		
	}
	
	override method saberDeudaJornales(){
		
		return (jornalesAdeudados * uocra.jornalEspecialistaBanioCocina())
	}
}
