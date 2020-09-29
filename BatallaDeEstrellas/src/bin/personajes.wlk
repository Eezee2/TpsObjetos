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
	
	method sumarEnergia(unaEnergia){
		energia+=unaEnergia
	}
	method restarEnergia(unaEnergia){
		energia-=unaEnergia
	}
	
	method luchar(unPersonaje)
	{
		self.sumarEnergia(400)
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
	
	method sumarEnergia(unaEnergia){
		energia+=unaEnergia
	}
	method restarEnergia(unaEnergia){
		energia-=unaEnergia
	}
	method luchar(unPersonaje)
	{
		self.sumarEnergia(500)
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
	
	method sumarEnergia(unaEnergia){
		energia+=unaEnergia
	}
	method restarEnergia(unaEnergia){
		energia-=unaEnergia
	}
	
	method luchar(unPersonaje)
	{
		const energiaARestar =unPersonaje.energia()/2
		unPersonaje.restarEnergia(energiaARestar)
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
	
	method sumarEnergia(unaEnergia){
		energia+=unaEnergia
	}
	method restarEnergia(unaEnergia){
		energia-=unaEnergia
	}	
	
	method luchar(unPersonaje)
	{
		const energiaARestar= unPersonaje.cofre().size()*200
		unPersonaje.restarEnergia(energiaARestar)
		const item=unPersonaje.cofre().last()
		if(not(cofre.contains(item))){
		cofre.add(item)
		}
		else{}
		unPersonaje.cofre().remove(item)
	}
}


