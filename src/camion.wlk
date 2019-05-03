import cosas.*

object camion {
	const property cosas = []
	
	method cargar(cosa) {
		cosas.add(cosa)
	}
	method descargar(cosa){
		cosas.remove(cosa)
	}
	method pesoTotal(){
		return cosas.sum{ c => c.peso()	} + 1000
	}
	method excedidoDePeso(){
		return self.pesoTotal() > 2500
	}
	method objetosPeligrosos(nivel){
		return cosas.filter{c => c.nivelPeligrosidad() > nivel} 
	}
	method objetosMasPeligrososQue(cosa){
		return cosas.filter{c => c.nivelPeligrosidad() > cosa.nivelPeligrosidad() }  
	}
	method puedeCircularEnRuta(nivelMaximoPeligrosidad){
		return cosas.any{ c => c.nivelPeligrosidad() < nivelMaximoPeligrosidad }
	}
}
