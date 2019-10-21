class Obra {
	var property ladrillos = 0
	var property metrosDeCanio = 0
	var property metrosDeCable = 0
	var property cinta = 0
	var property fosforos = 0
	var property arandelas = 0
	var property efectivo = 0
	var property metrosCuadradosConstruidos = 0
	var property implementosDeAguaColocados = 0
	var property implementosDeGasColocados = 0
	var property cablesElectricosColocados = 0
	
	//LISTA DE OBREROS CONTRATADOS EN LA OBRA
	const property obreros = []
	
	//METODO PARA CONTRATAR A OBRERO
	method contratarObrero(obrero){
		obreros.add(obrero)
		//AGREGO LA OBRA A LA LISTA DE OBRAS DEL OBRERO
		obrero.agregarObra(self)
	}
	
	//METODO PARA DESPEDIR A OBRERO
	method despedirObrero(obrero){
		obreros.remove(obrero)
	}
	
	//CONSULTO SI LOS OBREROS ESTAN DISPONIBLES OSEA NO ESTAN DE LICENCIA
	method obrerosDisponibles(){
		return obreros.filter({obrero=>not obrero.estaDeLicencia()})
	}
	
	//JORNADA LABORAL
	method jornadaLaboral(){
		self.obrerosDisponibles().forEach{obrero=>obrero.jornadaLaboral(self)}
			
		
	}
	
	method mandarDeLicencia(obrero){
		obrero.tomarLicencia()
	}
	
	method levantarLicencia(obrero){
		obrero.salirDeLaLicencia()
	}
	
	method recibirladrillos(cant){
		ladrillos += cant
	}
	
	method recibirCanios(cant){
		metrosDeCanio += cant
	}
	
	method recibirCable(cant){
		metrosDeCable += cant
	}
	
	method recibirCinta(cant){
		cinta += cant
	}
	
	method recibirFosforos(cant){
		fosforos += cant
	}
	
	method recibirArandelas(cant){
		arandelas += cant
	}
	
	method existeObrero(obrero){
		return obreros.contains(obrero)
	}
	
	
	//CONSULTO SI ESTA FINALIZADA CON LAS CONDICIONES SOLICITADAS
	method estaFinalizada(){
		return (self.estanMetrosCuadradosConstruidos() && self.aguaInstalada() && self.gasInstalado() && self.cablesInstalados())
	}
	
	method estanMetrosCuadradosConstruidos(){
		return (metrosCuadradosConstruidos >= (50 * self.habitaciones()))
	}
	
	method aguaInstalada(){
		return (implementosDeAguaColocados >= (10 * self.banios()))
	}
	
	method gasInstalado(){
		return (implementosDeGasColocados >= ((8 * self.banios()) + (3 * self.habitaciones()))) 
	}
	
	method cablesInstalados(){
		return (cablesElectricosColocados >= (50*self.habitaciones()) + (100 * self.pisos()))
	}
	
	method restaPorCobrar(obrero){
		
	}
	
	method agregarEfectivo(cant){
		efectivo += cant
	}
	
	method deudaJornalesObrero(obrero){
		return  obrero.saberDeudaJornales()
	}
	
	
	
	method consultarDeudaJornalesObra(obra){
		
		var suma
		obreros.forEach{obrero=> suma = self.deudaJornalesObrero(obrero)}
		return suma
	}
	
	method pagarJornalObrero(){
		obreros.forEach{obrero=>obrero.pagarDeuda()}
		efectivo - self.consultarDeudaJornalesObra(self)
	}
	
	
	
	
	method habitaciones()	
	method pisos()
	method banios() 
	
	
}


class Casa inherits Obra {
	var property habitaciones = 3
	var property banios = 1
	
	override method habitaciones() = habitaciones
	override method banios() = banios
	
	override method pisos() = 1
}

class Edificio inherits Obra {
	var property pisos = 4
	override method pisos() = pisos
}

