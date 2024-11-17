class Personaje{
    const fuerza
    const inteligencia
    var rol

    method potencialOfensivo() = fuerza * 10 + rol.extra()
    method esGroso() = self.esInteligente() || self.esGrosoEnSuRol()
    method esInteligente()
    method esGrosoEnSuRol() = rol.cumpleExigencia()
    method cambiarDeRol(nuevoRol){
        rol = nuevoRol
    }
}

class Humanos inherits Personaje{
    override method esInteligente() = inteligencia > 50
}

class Orcos inherits Personaje{

    override method esInteligente() = false
    override method potencialOfensivo() = super() * 1.1
}

class Mascota{
    const fuerza
    const edad
    const tieneGarras

    method potencialOfensivo() = if(tieneGarras) fuerza * 2 else fuerza
    method esLongeva() = edad > 10
}

class Ejercito{
    const property personajes = []

    method invadir(localidad) = localidad.serInvadidaPor(self)
    method potencialOfensivo() = personajes.sum({personaje => personaje.potencialOfensivo()})
    method mejoresGuerreros() = personajes.sortedBy({uno, otro => uno.potencialOfensivo() >= otro.potencialOfensivo()}).take(10)
}
