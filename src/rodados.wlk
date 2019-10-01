import dependencia.*

class Corsa {
	var property color 
	
	method capacidad(){return 4}
	
	method velocidadMaxima(){return 150	}
	
	method peso(){return 1300}
	
}

class Renault{
	var property tieneTanqueAdicional = false
	
	method ponerTanque(){ tieneTanqueAdicional = true}
	
	method quitarTanque(){ tieneTanqueAdicional = false }
	
	method capacidad(){  
		if (tieneTanqueAdicional) { return 3}
		else { return 4 }	
	}
	
	method velocidadMaxima(){
		if (tieneTanqueAdicional) { return 120}
		else { return 110}		
	}
	
	method peso(){
		if (tieneTanqueAdicional) { return 1350}
		else { return 1200}
		
	}
	
	method color(){	return	 azul }
	
}

object traffic{
	var property interior 
	var property motor
	
	method colocarMotor(cual){ motor = cual}
	
	method colocarInterior(cual){ interior = cual}
	
	method capacidad() {return interior.capacidad()}
	
	method velocidadMaxima(){ return motor.velocidadMaxima()}
	
	method peso() { return interior.peso() + motor.peso() + 4000}
	
	method color(){	return blanco }
	
}
//interiores de la traffic
object interiorComodo {
	method capacidad(){return 5}
	method peso(){return 700}
}

object interiorPopular{
	method capacidad(){return 12}
	method peso(){return 1000}
}

//motores de la traffic
object motorPulenta{
	method peso(){return 800}
	method velocidadMaxima(){return 130}
}
object motorBataton{
	method peso() {return 500}
	method velocidadMaxima(){return 80}
}

//colores
object azul{}
object blanco{}
object rojo{}
object beige{}
object verde{}
object negro{}


class AutoEspecial{
	var property peso = 0
	var property velocidadMaxima = 0
	var property color 
	var property capacidad = 0
	
	method peso(cuanto) { peso = cuanto}
	method velocidadMaxima(cuanto) {velocidadMaxima = cuanto }
	method color(cual) { color = cual}
	method capacidad(cuanto) { capacidad = cuanto}
			
}



