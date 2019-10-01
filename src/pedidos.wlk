import rodados.*
import dependencia.*


class Pedido {
	var property kmts
	var property hs
	var property cantidadDePasajeros
	var property coloresIncompatibles = #{ }
	
	
	
	method distancia(cuanto){ kmts = cuanto}
	
	method distancia(){ return kmts}
	
	method tiempoMaximo(cuanto){ hs = cuanto}
	
	method tiempoMaximo(){ return hs}
	
	method acelerar(){ hs = self.tiempoMaximo() - 1}
	
	method relajar(){  hs = self.tiempoMaximo() + 1 }
	
	method cantidadDePasajeros(cuantos) { cantidadDePasajeros = cuantos}
	
	method coloresIncompatibles(color){ coloresIncompatibles.add(color)}
	
	method velocidadRequerida(){ return kmts / hs }
	
	method velocidadAutoYPedido(auto) { return auto.velocidadMaxima() + 10  > self.velocidadRequerida() }
	
	method capacidadAutoYPedido(auto) { return  auto.capacidad() >= self.cantidadDePasajeros()}
	
	method colorCompatible(color) { return not coloresIncompatibles.contains(color) 	}
	

	
	method satisfacePedido(auto) { 
		return self.velocidadAutoYPedido(auto) 
		and self.capacidadAutoYPedido(auto) 
		and self.colorCompatible(auto.color())
	} 	
	
}
