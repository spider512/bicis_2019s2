



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

object farolito {
	method peso() { return 0.5 }
	method esLuminoso() { return true }
	method carga() { return 0 }
}

class Canasto {
	var property volumen
	
	method peso() { return volumen / 10 }
	method esLuminoso() { return false }
	method carga() { return volumen * 2}
		
}

class MorralDeBici {
	var property largo
	var property tieneOjoGato
	
	method peso() { return 1.2 }
	method esLuminoso() { return tieneOjoGato }
	method carga() { return largo / 3 }
}

class AccesosriosX {
	var property largo
	var property tieneOjoGato
	var property volumen
	var property peso
	var property carga
	
	
}


/* 5.- Podriamos agregar infinidad de accesorios generando un class como el que se ve mas arriba "AccesoriosX"
 * En este se puede ver como determinando var property, a cada una de las variables que consideran los accesorios,
 * se puede setear cada una de estas propiedades con un valor determinado y con este mismo podemos retornarlo (get).
 *  Todos los accesorios que generemos seran polimorificos con los otros accesorios ya que respetan el mismo contrato.
 */


