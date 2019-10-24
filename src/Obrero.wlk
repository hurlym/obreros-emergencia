import uocra.*

class Obrero {
	
	var property estaDeLicencia = false
	var property obrasTrabajadas  = []
	var property jornalesAdeudados = 0
	
	method jornadaLaboral(obra)
	
	method saberDeudaJornales()
	
	method tomarLicencia(){estaDeLicencia = true}
	method salirDeLaLicencia(){estaDeLicencia = false}
	method agregarObra(obra){
		obrasTrabajadas.add(obra)
	}
	
	method trabajoEn(obra){
		return obrasTrabajadas.contains(obra)
	}
	
	
	method verJornalesAdeudados(){
		return jornalesAdeudados
	}
	
	
		
	
	method pagarDeuda(){
		jornalesAdeudados = 0
	}
	
}
