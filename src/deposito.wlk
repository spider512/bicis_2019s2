import accesorios.*
import bicis.*


object deposito {
	
	var property bicis = []
	
	method bicisRapidas() { return bicis.filter({ cadaBici => cadaBici.velocidadDeCrucero() > 25})}
	method marcas() {return bicis.map({ cadaBici => cadaBici.marca()}).asSet().asList() } 
	method depositoNocturno() { return bicis.all({ cadaBici => cadaBici.tieneLuz()})}
	method tieneBiciParaLlevar(kg) { return bicis.any({cadaBici => cadaBici.carga() >= kg })}
	
	method marcaMasRapida() {return bicis.max( {cadaBici => cadaBici.velocidadDeCrucero()} ).marca() }
	
	
	method cargaBicisLargas() { return bicis.filter( {cadaBici => cadaBici.largo() > 170} ).map({cadaBici => cadaBici.carga()}).sum()}
	method bicisSinAccesorios() { return bicis.filter( { cadaBici => cadaBici.accesorios().isEmpty()}).size()}
	method bicisCompas(bici) { bicis.remove(bici) 
		return bicis.filter( { cadaBici => cadaBici.esCompaDe(bici)})}
		
	//method hayCompaneras() {  bicis.forEach( {cadaBici => cadaBici.bicisCompas(bicis.get(bicis.size()-1))})}
	

}