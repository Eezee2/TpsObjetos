import centrales.*

object springfield {
	const velocidadDelViento=10
	const riquezaDelSuelo=0.9
	var necesidadEnergetica=2000000
	const centrales=#{burns,exBosque,elSuspiro}
	
	method riquezaDelSuelo(){
		return riquezaDelSuelo
	}
	
	method velocidadDelViento(){
		return velocidadDelViento
	}
	
	method centralesContaminantes(){
		return centrales.filter({central=>central.esContaminante()})
	}
	
	method produccionDeEnergia()
	{
		return centrales.sum({central=>central.produccionEnergetica(self)})
	}
	 method cubrioSusNecesidades()
	{
		return self.produccionDeEnergia() >= necesidadEnergetica
	}
	
	method estaEnElHorno()
	{
		const centralesContaminadas=self.centralesContaminantes()
		return centralesContaminadas.sum({central=>central.produccionEnergetica(self)}) > necesidadEnergetica/2 || centrales.all({central=>central.centralesContaminantes()})
	}
	method centralMasProductiva()
	{	
		return centrales.max({central=>central.produccionEnergetica(self)})
	}
	method necesidadEnergetica(unaNecesidad){
		necesidadEnergetica=unaNecesidad
	}

}
object albuquerque{
	const caudal=150
	const central=hidroelectrica
	
	method caudal()
	{
		return caudal
	}
	method produccionDeEnergia()
	{
		
		return central.produccionEnergetica(self)
	}

	method centralMasProductiva()
	{
		return central
	}
}

object region{
	const ciudades=[springfield,albuquerque]
	method centralesMasProductoras()
	{
		return 	ciudades.map({ciudad=>ciudad.centralMasProductiva()})
	}
}



