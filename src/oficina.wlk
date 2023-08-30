import remiseras.*
import clientes.*

object oficina{
	var property primerRemisera
	var property segundaRemisera
	method asignarRemiseras(remisera1, remisera2){
		primerRemisera = remisera1
		segundaRemisera = remisera2
	}
	method cambiarPrimerRemiseraPor(remisera){
		primerRemisera = remisera
	}
	method cambiarSegundaRemiseraPor(remisera){
		primerRemisera = remisera
	}
	method intercambiarRemiseras(){
		const bandera = primerRemisera
		primerRemisera = segundaRemisera
		segundaRemisera = bandera
	}
	method remiseraElegidaParaViaje(cliente, kms){
		if((self.segundaRemisera().cobroDelViaje(cliente, kms) + 30) < self.primerRemisera().cobroDelViaje(cliente, kms)){
			return segundaRemisera
		} else{
			return primerRemisera
		}
	}
}









