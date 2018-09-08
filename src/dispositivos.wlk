class ComederoNormal {
	var property pesoMaximo
	var property tamanioRacion
	var property cantidadRaciones = 30
	
	method puedeAtenderA(animal) =
		animal.tieneHambre() and
		self.soportaPeso(animal)
	method soportaPeso(animal) =
		animal.peso() < pesoMaximo
	method atenderA(animal) {
		animal.comer(tamanioRacion)
		cantidadRaciones -= 1
	}
}

class ComederoInteligente {
	var property cantidadComida
	
	method puedeAtenderA(animal) =
		animal.tieneHambre()
	method atenderA(animal) {
		var racion = animal.peso() / 100
		animal.comer(racion)
		cantidadComida -= racion
	}
}

class Bebedero {
	var animalesAtendidos = 0
	
	method puedeAtenderA(animal) =
		animal.tieneSed()
	method atenderA(animal) {
		animal.beber()
		animalesAtendidos += 1
	}
}

class Vacunatorio {
	var cantidadVacunas = 50
	
	method puedeAtenderA(animal) =
		animal.convieneVacunar()
	method atenderA(animal) {
		animal.vacunar()
		cantidadVacunas -= 1
	}
}