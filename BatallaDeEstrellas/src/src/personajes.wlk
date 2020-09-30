object pamela {
	
	const cofre=["algodon","aguaOxigenada","cintaDePapel","cintaDePapel"]
	var energia=6000
	const gritoDeVictoria="Aca pasó la Pamela"
	
	method energia(){
		return energia
	}
	method cofre(){
		return cofre
	}
	method gritar()
	{
		return gritoDeVictoria
	}
	
	method energia(unaEnergia){
		energia=unaEnergia
	}
	
	method modificarEnergia(unaEnergia){
		energia+=unaEnergia
	}
	
	method luchar(unPersonaje)
	{
		self.modificarEnergia(400)
	}
	method ultimoObjetoDelCofre(){
		return cofre.last()
	}
	method cantidadDeObjetosEnCofre(){
		return cofre.size()
	}
	method removerUltimoObjetoDelCofre(item){
		cofre.remove(item)
	}
}
object pocardo {
	
	const cofre=["guitarra", "curitas", "cotonetes"]
	var energia=5600
	const gritoDeVictoria="Siente el poder de la musica!"
	
	method energia(){
		return energia
	}
	method cofre(){
		return cofre
	}
	method energia(unaEnergia){
		energia=unaEnergia
	}
	
	method gritar()
	{
		return gritoDeVictoria
	}
	
	method modificarEnergia(unaEnergia){
		energia+=unaEnergia
	}
	
	method luchar(unPersonaje)
	{
		self.modificarEnergia(500)
	}
	method ultimoObjetoDelCofre(){
		return cofre.last()
	}
	method cantidadDeObjetosEnCofre(){
		return cofre.size()
	}
	method removerUltimoObjetoDelCofre(item){
		cofre.remove(item)
	}
}

object tulipan {
	
	const cofre=["rastrillo","maceta","maceta","manguera"]
	var energia=8400
	const gritoDeVictoria="Hora de cuidar a las plantas"
	
	method energia(){
		return energia
	}
	method cofre(){
		return cofre
	}
	method energia(unaEnergia){
		energia=unaEnergia
	}
	method gritar()
	{
		return gritoDeVictoria
	}
	
	method modificarEnergia(unaEnergia){
		energia+=unaEnergia
	}

	method luchar(unPersonaje)
	{
		const energiaARestar =unPersonaje.energia()/2
		unPersonaje.modificarEnergia(-energiaARestar)
	}
	method ultimoObjetoDelCofre(){
		return cofre.last()
	}
	method cantidadDeObjetosEnCofre(){
		return cofre.size()
	}
	method removerUltimoObjetoDelCofre(item){
		cofre.remove(item)
	}
}
object toro {
	
	const cofre=[]
	var energia=7800
	const gritoDeVictoria="No se metan con el toro"
	
	method energia(){
		return energia
	}
	method cofre(){
		return cofre
	}
	method energia(unaEnergia){
		energia=unaEnergia
	}
	
	method gritar()
	{
		return gritoDeVictoria
	}
	
	method modificarEnergia(unaEnergia){
		energia+=unaEnergia
	}
	method ultimoObjetoDelCofre(){
		return cofre.last()
	}
	method cantidadDeObjetosEnCofre(){
		return cofre.size()
	}
	method removerUltimoObjetoDelCofre(item){
		cofre.remove(item)
	}
	
	method luchar(unPersonaje)
	{
		const energiaARestar= unPersonaje.cantidadDeObjetosEnCofre()*200
		unPersonaje.modificarEnergia(-energiaARestar)
		const item=unPersonaje.ultimoObjetoDelCofre()
		if(not(cofre.contains(item))){
		cofre.add(item)
		}
		else{}
		unPersonaje.removerUltimoObjetoDelCofre(item)
	}
	
}


