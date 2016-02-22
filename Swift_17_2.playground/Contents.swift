//: Playground - noun: a place where people can play

import UIKit

enum Velocidades: Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial: Velocidades){
        self = velocidadInicial
    }
}

class Auto {
    var velocidad: Velocidades
    
    init() {
        self.velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadema: String) {
        switch velocidad {
        case Velocidades.Apagado:
            velocidad = Velocidades.VelocidadBaja
        case Velocidades.VelocidadBaja:
            velocidad = Velocidades.VelocidadMedia
        case Velocidades.VelocidadMedia:
            velocidad = Velocidades.VelocidadAlta
        case Velocidades.VelocidadAlta:
            velocidad = Velocidades.VelocidadMedia
        }
        return (velocidad.rawValue, "\(velocidad)")
    }
    
}

var auto = Auto()
for i in 1...20 {
    if i == 1 {
        print("\(i). \(auto.velocidad.rawValue), \(auto.velocidad)")
    }
    else {
        var respuesta = auto.cambioDeVelocidad()
        print("\(i). \(respuesta.0), \(respuesta.1)")
    }
}