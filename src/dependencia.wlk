import rodados.*

class Dependencia{
	var property flotaDeRodados = []
	var property empleados = 0
	
	method agregarAFlota(rodado){ flotaDeRodados.add(rodado)  }
	method quitarDeFlota(rodado){ flotaDeRodados.remove(rodado)}
	
	method pesoTotalFlota() { return flotaDeRodados.sum({c=>c.peso() } )}
	
	method estaBienEquipada(){ return flotaDeRodados.size()>=3 and flotaDeRodados.all({c=>c.velocidadMaxima() >=100 })}
	
	method capacidadTotalEnColor(color){ return (flotaDeRodados.filter({c=>c.color() == color })).sum({c=>c.capacidad()}) }
	
	
	
	
}
