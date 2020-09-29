import Destinos.*

object pabloHari {
	const usuario="PHari"
	const destinosConocidos=[lastToninas,goodAirs]
	var dinero=1500
	const usuariosSeguidos=[]
	
	method dinero(){
		return dinero
	}
	
	method volarAUnDestino(unDestino){
		if(dinero>unDestino.costo())
		{
			dinero-=unDestino.costo()
			destinosConocidos.add(unDestino)
		}
		else{}
	}
	method obtenerKM(){
		return destinosConocidos.sum({destino=>destino.costo()/10})
	}
	method seguirUsuario(unUsuario){
		usuariosSeguidos.add(unUsuario)
		unUsuario.serSeguido(self)	
	}
	method serSeguido(unUsuario){
		usuariosSeguidos.add(unUsuario)
	}
}

/* 
object felipe {
	const usuario="PHari"
	const destinosConocidos=[lastToninas,goodAirs]
	var dinero=1500
	const usuariosSeguidos=[]
	var kilometros
	
	method dinero(){
		return dinero
	}
	
	method volarAUnDestino(unDestino){
		if(self.dinero()>unDestino.costo())
		{
			dinero-=unDestino.costo()
			destinosConocidos.add(unDestino)
			return conoce
		}
		else{
			return conoce
		}
	}
	method obtenerKM(){
		kilometros=destinosConocidos.sum({destino=>destino.costo()/10})
	}
	method seguirUsuario(unUsuario){
		usuariosSeguidos.add(unUsuario)
		unUsuario.serSeguido(self)
		
	}
	method serSeguido(unUsuario){
		usuariosSeguidos.add(unUsuario)
	}
}
* */
