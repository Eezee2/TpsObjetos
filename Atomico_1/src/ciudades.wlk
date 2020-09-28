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
		return centrales.sum({central=>central.produccionEnergetica()})
	}
	 method cubrioSusNecesidades()
	{
		return self.produccionDeEnergia() >= necesidadEnergetica
	}
	
	method estaEnElHorno()
	{
		const centralesContaminadas=self.centralesContaminantes()
		return centralesContaminadas.sum({central=>central.produccionEnergetica()}) > necesidadEnergetica/2 || centralesContaminadas==centrales
	}
	method centralMasProductora()
	{
		const maximoProducido= centrales.map({central=>central.produccionEnergetica()}).max()
		//return centrales.filter({central=>central.produccionEnergetica()==maximoProducido})
		return centrales.find({central=>central.produccionEnergetica()==maximoProducido})	
	}
	method necesidadEnergetica(unaNecesidad){
		necesidadEnergetica=unaNecesidad
	}

}
object albuquerque{
	const caudal=150
	const centrales=hidroelectrica
	
	method caudal()
	{
		return caudal
	}
	method produccionDeEnergia()
	{
		
		return centrales.produccionEnergetica()
	}

	method centralMasProductora()
	{
		return centrales
	}
}

object region{
	const ciudades=[springfield,albuquerque]
	const centralesMasProductoras=#{}
	method centralesMasProductoras()
	{
		centralesMasProductoras.addAll(ciudades.map({ciudad=>ciudad.centralMasProductora()}))
		return centralesMasProductoras
	}
}



