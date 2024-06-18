class NaveEspacial {
 	var property velocidad
 	var property direccion
 	
 	
 	method desacelerar(cuanto) {velocidad = velocidad -= cuanto}
 	method acelerar(cuanto) {velocidad = (velocidad + cuanto).min(100000)}
 	method irHaciaElSol() {direccion = 10}
 	method escaparDelSol() {direccion = -10}
 	method ponerseParaleloAlSol() {direccion = 0}
 	method acercarseUnPocoAlSol() {direccion = (direccion + 1).min(10)}
 	method alejarseUnPocoDelSol() {direccion = (direccion - 1).max(-10)}
}

class NavesBaliza inherits NaveEspacial{
	var color
	
	method cambiarColorDeBaliza(colorNuevo) {color = colorNuevo}
}

class NavesDePasajeros inherits NaveEspacial{
	var property racionesDeComida
	var property racionesDeBebida
	
	method cargarComida(cantidadDeRaciones) {(racionesDeComida = racionesDeComida + cantidadDeRaciones)}
	method descargarComida(cantidadDeRaciones) {racionesDeComida = (racionesDeComida - cantidadDeRaciones).max(0)}
	method cargarBebida(cantidadDeRaciones) {(racionesDeBebida = racionesDeBebida + cantidadDeRaciones)}
	method descargarBebida(cantidadDeRaciones) {racionesDeBebida = (racionesDeBebida - cantidadDeRaciones).max(0)}
}

class NavesDeCombate inherits NaveEspacial{
	var estaInvisible
	var misilesDesplegados
	
	method ponerseVisible() {estaInvisible = false}
	method ponerseInvisible() {estaInvisible = true}
	method estaInvisible() = estaInvisible
	method desplegarMisiles() {misilesDesplegados = true}
	method replegarMisiles() {misilesDesplegados = false}
	method misilesDesplegados() = misilesDesplegados
	
}

