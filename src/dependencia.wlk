import rodados.*
import pedidos.*

class Dependencia{
	var property flotaDeRodados = []
	var property empleados = 0
	var property registroDePedidos = []

	
	method agregarAFlota(rodado){ flotaDeRodados.add(rodado)  }
	method quitarDeFlota(rodado){ flotaDeRodados.remove(rodado)}
	
	method pesoTotalFlota() { return flotaDeRodados.sum({c=>c.peso() } )}
	
	method estaBienEquipada(){ return flotaDeRodados.size()>=3 and flotaDeRodados.all({c=>c.velocidadMaxima() >=100 })}
	
	method capacidadTotalEnColor(color){ return (flotaDeRodados.filter({c=>c.color() == color })).sum({c=>c.capacidad()}) }
	
	method colorDelRodadoMasRapido(){  return (flotaDeRodados.max( { c=>c.velocidadMaxima()})).color() }
	
	method capacidadFaltante() { return empleados - (flotaDeRodados.sum({ c=>c.capacidad() }))}
	
	method esGrande() { return flotaDeRodados.size()>=5 and empleados >=40} 
	
	method agregarPedido(pedido) { registroDePedidos.add(pedido)}
	method quitarPedido(pedido) { registroDePedidos.remove(pedido)}
	
	method totalDePasajerosEnPedidos(){
		
		return registroDePedidos.sum( { c=>c.cantidadDePasajeros() })
		
	}
	
	method pedidoQueNoSeSatisface(auto){ 
		
		return registroDePedidos.filter({ c=>c.satisfacePedido(auto ) })
	}
	
	method todosIncompatiblesAlColor(color){ 
		return not registroDePedidos.all({ c=>c.colorCompatible(color) })
	}
	
}
