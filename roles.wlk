object guerrero{
    method extra(personaje) = 100
    method cumpleExigencia(alguien) = alguien.fuerza() > 50 
}

object brujo{
    method extra(personaje) = 0
    method cumpleExigencia(alguien) = true
}

object cazador{

    method extra(personaje) = personaje.mascota().potencialOfensivo()
    method cumpleExigencia(alguien) = alguien.mascota().esLongeva() 
}

