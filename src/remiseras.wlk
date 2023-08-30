import clientes.*
 
object roxana{
	method cobroDelViaje(cliente, kms){
		return cliente.precioDelViaje() * kms
	}
	
}

object gabriela{
	method cobroDelViaje(cliente, kms){
		return (cliente.precioDelViaje() * kms) * 1.2
	}
	
}

object mariela{
	method cobroDelViaje(cliente, kms){
		return 50.max(cliente.precioDelViaje() * kms)
	}
	
}

object juana{
	method cobroDelViaje(_, kms){
		return if(kms <= 8){100}else{200}
	}
}

object lucia{
	var estaReemplazando
	
	method estaReemplazando() = estaReemplazando
	method estaReemplazando(remisera){
		if(self == remisera){
			self.error("No se puede reemplazar a si misma")
		}
		estaReemplazando = remisera
	}
	
	method cobroDelViaje(cliente, kms){
		return estaReemplazando.cobroDelViaje(cliente, kms)
	}
}

object melina{
	var trabajaPara
	
	method trabajaPara() = trabajaPara
	method trabajaPara(cliente){
		if(self == cliente){
			self.error("Error en trabajaPara")
		}
		trabajaPara = cliente
	}
}








