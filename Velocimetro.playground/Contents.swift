//: Velocímetro de un automóvil digital
//Avril Hernández Briones

import UIKit

//Enumeración Velocidades
enum Velocidades : Int {
    case Apagado = 0,           //representa velocidad 0
         VelocidadBaja = 20,    //representa velocidad de 20 km por hora
         VelocidadMedia = 50,   //representa velocidad de 50 km por hora
         VelocidadAlta = 120    //representa velocidad de 120 km por hora
    
    init( velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

//Clase Auto
class Auto{
    var velocidad : Velocidades
    
    init( ){
        self.velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    //Función Cambio de Velocidad
    func cambioDeVelocidad(  ) -> (actual : Int, velocidadEnCadena: String) {
        
        let velocidadActual : Int = velocidad.rawValue
        var velocidadEnCadena : String
        
        switch velocidad{
        case .Apagado:
            velocidadEnCadena = "Apagado"
            velocidad = Velocidades.VelocidadBaja
            break
        case .VelocidadBaja:
            velocidadEnCadena = "Velocidad Baja"
            velocidad = Velocidades.VelocidadMedia
            break
        case .VelocidadMedia:
            velocidadEnCadena = "Velocidad Media"
            velocidad = Velocidades.VelocidadAlta
            break
        case .VelocidadAlta:
            velocidadEnCadena = "velocidad Alta"
            velocidad = Velocidades.VelocidadMedia
            break
        }
         return (velocidadActual, velocidadEnCadena)
    }
}


//Instancia de la clase Auto
let auto = Auto()


//For
//Manda llamar a la función cambio de velocidad e imprime los valores en consola
for var i = 1; i < 21; i++ {
    var velocidadActual = auto.cambioDeVelocidad()
    print("\(i). \(velocidadActual.actual), \(velocidadActual.velocidadEnCadena)")
}