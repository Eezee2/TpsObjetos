import Destinos.*
import usuarios.*

object barrileteCosmico {
	const usuarios=[pabloHari]
	const destinos=#{garlicsSea,silversSea,lastToninas,goodAirs}
	
	method destinosImportantes(){
		return destinos.filter({destino=>destino.esDestinoImportante()})
	}
/*	method aplicarDescuento(unPrecio,unDestino){
		unDestino.costo(unPrecio)
		unDestino.agregarEquipaje("Certificado de descuento")
	}
*/
	method aplicarDescuento(unDescuento){
		destinos.forEach({unDestino=>unDestino.aplicarDescuento(unDescuento)})
	}

	method esEmpresaExtrema(){
		const destinosImportantes=self.destinosImportantes()
		return destinosImportantes.filter({unDestino=>unDestino.esDestinoPeligroso()}).size()>=1
	}
	method conocerCarta(){
		return destinos
	}
	method destinos(){
		return destinos
	}

}
