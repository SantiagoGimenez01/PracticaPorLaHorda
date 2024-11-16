class Personaje{
    var fuerza
    var inteligencia
    var rol
    var property mascota

    method potencialOfensivo() = fuerza * 10 + rol.extra()
    method esGroso() = self.esInteligente() || self.esGrosoEnSuRol()
    method esInteligente() = inteligencia > 50
    method esGrosoEnSuRol() = rol.cumpleExigencia()
}

class Humanos inherits Personaje{

}

class Orcos inherits Personaje{

    override method esInteligente() = false
    override method potencialOfensivo() = super() * 1.1
}

class Mascota{
    var fuerza
    var edad
    const tieneGarras

    method potencialOfensivo() = if(tieneGarras) return fuerza * 2 else return fuerza
    method esLongeva() = edad > 10
}