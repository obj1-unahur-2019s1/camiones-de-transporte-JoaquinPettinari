object knightRider {
	method peso() { return 500 }
	method nivelPeligrosidad() { return 10 }
}

object bumblebee {
	var transformadoEnAuto = true
	
	method peso() { return 800 }
	method nivelPeligrosidad() { return if (transformadoEnAuto) { 15 } else { 30 }  }
	method transformar() { transformadoEnAuto = not transformadoEnAuto }
}
object paqueteDeLadrillos{
	var ladrillos
	method peso() {return ladrillos * 2}
	method agregar(cuantos) { ladrillos += cuantos }
	method sacar(cuantos) { ladrillos -= cuantos}
	method nivelPeligrosidad() = 2
}
object arenaAGranel{
	var peso
	method peso() = peso
	method agregar(cuanto) { peso += cuanto}
	method sacar(cuanto) {peso -= cuanto}
	method nivelPeligrosidad() = 1
}
object bateriaAntiaerea{
	var tieneMisiles = false
	method peso() {
		if (tieneMisiles) {return 300}
		else{ return 200}		
		}
	method misiles(){ tieneMisiles = not tieneMisiles }
	method nivelPeligrosidad(){
		if (tieneMisiles){return 100}
		else {return 0}
	}
}
object contenedorPortuario{
	const property cosas = []
	method peso() {
		return cosas.sum{ c => c.peso() + 100 }
	}
	method nivelPeligrosidad(){
		if(cosas.isEmpty()){return 0} 
		else{
		return cosas.sum{ c => c.nivelPeligrosidad() }
		}
	}
}
object residuosRadioactivos{
	var peso
	method peso() = peso
	method agregar(cuanto) {peso += cuanto}
	method sacar(cuanto){peso -= cuanto}
	method nivelPeligrosidad() = 200 
}
object embalajeDeSeguridad{
	const property cosas = []
	method embalar(queCosa) {cosas.add(queCosa)}
	method desembalar(queCosa) {cosas.remove(queCosa)}
	method peso() {
		return cosas.sum{c => c.peso() }
	}
	method nivelPeligrosidad(){
		return cosas.sum{c => c.nivelPeligrosidad() / 2}
	}
}

