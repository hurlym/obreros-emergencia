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
		self.obrerosDisponibles().foreach({obrero=>obrero.jornadaLaboral(self)})
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

