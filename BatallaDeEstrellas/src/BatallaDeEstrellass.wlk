import personajes.*

object laCasaDeLaFlor {
	const personajes=[pamela,tulipan]

	method personajes(){
		return personajes
	}
	method energiaTotal(){
		return personajes.sum({personaje=>personaje.energia()})
	}
	method batallar(unEquipo){

	personajes.forEach({personaje=>unEquipo.personajes().forEach({otroPersonaje=>personaje.luchar(otroPersonaje)})})

	}
	method ganar()
	{
		return personajes.map({personaje=>personaje.gritar()})
	}
	
	method agregarPersonaje(unPersonaje)
	{
		personajes.add(unPersonaje)
	}
	method eliminarPersonaje(unPersonaje)
	{
		personajes.remove(unPersonaje)
	}
}
object danceBull {
	const personajes=[pocardo,toro]
	
	method personajes(){
		return personajes
	}
	method energiaTotal(){
		return personajes.sum({personaje=>personaje.energia()})
	}

	method batallar(unEquipo){

	personajes.forEach({personaje=>unEquipo.personajes().forEach({otroPersonaje=>personaje.luchar(otroPersonaje)})})
	}
	method ganar()
	{
		return personajes.map({personaje=>personaje.gritar()})
	}
	method agregarPersonaje(unPersonaje)
	{
		personajes.add(unPersonaje)
	}
	method eliminarPersonaje(unPersonaje)
	{
		personajes.remove(unPersonaje)
	}
}

object combate{
	
	method batalla(unEquipo,otroEquipo)
	{
		unEquipo.batallar(otroEquipo)
		otroEquipo.batallar(unEquipo)	
		const energiaEquipo1=unEquipo.energiaTotal()
		const energiaEquipo2=otroEquipo.energiaTotal()
		if (energiaEquipo1>=energiaEquipo2)
		{
			return unEquipo.ganar()
		}
		else
		{
			return otroEquipo.ganar()
		}
	}
}
