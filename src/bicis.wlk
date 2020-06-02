import accesorios.*
import deposito.*


class Bici {
	var property rodado
	var property largo
	var property marca
	var property accesorios = []
	
	method altura() {return rodado * 2.5 + 15 }
	method velocidadDeCrucero() {return if  (largo > 120)  rodado + 6 else rodado + 2 }
	method carga() { return accesorios.map({cadaAccesorio => cadaAccesorio.carga() }).sum() }
	method peso() { return  rodado / 2 + accesorios.map({cadaAccesorio => cadaAccesorio.peso() }).sum() }
	method tieneLuz() { return accesorios.any({cadaAccesorio => cadaAccesorio.esLuminoso()})}
	method accesoriosLivianos() { return accesorios.filter({cadaAccesorio => cadaAccesorio.peso() < 1}).size() }
	method esCompaDe(bici) { return bici.marca() == self.marca() and (bici.largo() - self.largo()).abs() < 10 }
	
}



