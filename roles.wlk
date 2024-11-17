object guerrero{
    method extra(personaje) = 100
    method cumpleExigencia(alguien) = alguien.fuerza() > 50 
}

object brujo{
    method extra(personaje) = 0
    method cumpleExigencia(alguien) = true
}

class Cazador{
    var property mascota

    method extra(personaje) = personaje.mascota().potencialOfensivo()
    method cumpleExigencia(alguien) = self.mascota().esLongeva() 
}

