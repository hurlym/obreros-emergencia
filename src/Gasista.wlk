import Obrero.*

class Gasista inherits Obrero{
	
	override method jornadaLaboral(obra){
		//DESCUENTO LOS METROS DE CAÑO CONSUMIDOS Y LOS FOSFOROS
		obra.metrosDeCanio(obra.metrosDeCanio() - 3)
		obra.fosforos(obra.fosforos() - 20)
		
		//AGREGO LA INSTALACION DE LOS CAÑOS POR LA JORNADA LABORAL
		obra.implementosDeGasColocados(obra.implementosDeGasColocados() + 3)
	}
}
