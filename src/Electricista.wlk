import Obrero.*
import uocra.*

class Electricista inherits Obrero{
	
	
	override method jornadaLaboral(obra){
		
		//DESCUENTO LOS METROS DE CABLE Y LA CINTA 
		obra.metrosDeCable(obra.metrosDeCable() - 4)
		obra.cinta(obra.cinta() - 1)
		
		//AGREGO LOS METROS DE CABLE INSTALADOS
		obra.cablesElectricosColocados(obra.cablesElectricosColocados() + 4)
		
		jornalesAdeudados +=  1
		
	}
	
	override method saberDeudaJornales(){
		
		return (jornalesAdeudados * uocra.jornalElectricista())
	}
	
	
}
