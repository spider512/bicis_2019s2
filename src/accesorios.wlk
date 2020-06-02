import bicis.*
import deposito.*


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
	
	method esLuminoso() { return tieneOjoGato }
	
}


/* 5.- Podriamos agregar infinidad de accesorios generando un class como el que se ve mas arriba "AccesoriosX"
 * En este se puede ver como determinando var property, a cada una de las variables que consideran los accesorios,
 * se puede setear cada una de estas propiedades con un valor determinado y con este mismo podemos retornarlo (get).
 *  Todos los accesorios que generemos seran polimorificos con los otros accesorios ya que respetan el mismo contrato.
 */
