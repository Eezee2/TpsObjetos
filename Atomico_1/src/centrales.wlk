import ciudades.*

object burns {
	var cantidadDeVarillas=10
	var ciudad=springfield
	
	method construirEnCiudad(){}
	method produccionEnergetica()
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
	method ciudad(unaCiudad){
		ciudad=unaCiudad
	}

}

object exBosque {
	var capacidad=20000
	var ciudad=springfield

	
	method produccionEnergetica()
	{
		return 500000 + capacidad*(ciudad.riquezaDelSuelo())
	}
	
	method esContaminante()
	{
		return true
	}
	method capacidad(unaCapacidad){
		capacidad=unaCapacidad
	}
	method ciudad(unaCiudad){
		ciudad=unaCiudad
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
	var ciudad=springfield
	
	method produccionEnergetica()
	{
		return turbinas.sum({turbina=>turbina.produccion(ciudad.velocidadDelViento())})
	}

	method esContaminante()
	{
		return false
	}
	method nuevaTurbina(unaTurbina)
	{
		turbinas.add(unaTurbina)
	}
	method ciudad(unaCiudad){
		ciudad=unaCiudad
	}
}

object hidroelectrica {
	var ciudad=albuquerque
	
	method produccionEnergetica()
	{
		return 2000000*ciudad.caudal()
	}

	method esContaminante()
	{
	}
		method ciudad(unaCiudad){
		ciudad=unaCiudad
	}
}