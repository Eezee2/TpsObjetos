import ciudades.*

object burns {
	var cantidadDeVarillas=10

	method construirEnCiudad(){}
	method produccionEnergetica(unaCiudad)
	{
		return cantidadDeVarillas*100000
	}
	method esContaminante()
	{
		return cantidadDeVarillas>20
	}
	method cantidadDeVarillas(unasVarillas){
		cantidadDeVarillas=unasVarillas
	}

}

object exBosque {
	var capacidad=20000
	
	method produccionEnergetica(unaCiudad)
	{
		return 500000 + capacidad*(unaCiudad.riquezaDelSuelo())
	}
	
	method esContaminante()
	{
		return true
	}
	method capacidad(unaCapacidad){
		capacidad=unaCapacidad
	}

	
}

object turbina1{
	const produccion=200000
	method produccion(velocidadDelViento)
	{
		return produccion*velocidadDelViento
	}
}

object elSuspiro {
	const turbinas=[turbina1]

	method produccionEnergetica(unaCiudad)
	{
		return turbinas.sum({turbina=>turbina.produccion(unaCiudad.velocidadDelViento())})
	}

	method esContaminante()
	{
		return false
	}
	method nuevaTurbina(unaTurbina)
	{
		turbinas.add(unaTurbina)
	}

}

object hidroelectrica {
	
	method produccionEnergetica(unaCiudad)
	{
		return 2000000*unaCiudad.caudal()
	}

	method esContaminante()
	{
		return false
	}

}