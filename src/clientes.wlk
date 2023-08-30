import remiseras.*

object ludmila{
	method precioDelViaje() = 18
}

object anaMaria{
	var esEstable = true
	
	method esEstable() = esEstable
	method cambiarEstabilidad(){
		esEstable = not esEstable
	}
	method precioDelViaje() =
		if(esEstable){
			30
		} else{
			25
		}
}

object teresa{
	var precio = 22
	
	method cambiarPrecio(unPrecio){
		precio = unPrecio
	}
	method precioDelViaje() = precio
}
