import personajes.*

class Localidad{
    var habitantes
    method serInvadidaPor(ejercito){
        if(self.habitantesSonVencidosPor(ejercito)){
            self.serOcupadaPor(ejercito)
        }
    }

    method potencialDefensivo()
    method habitantesSonVencidosPor(ejercito) = ejercito.potencialOfensivo() > self.potencialDefensivo()
    method serOcupadaPor(ejercito){ habitantes = ejercito }
    method defensaExtra() 
}

class Aldea inherits Localidad{
    const habitantesMax

    method puedeOcupar(ejercito) = ejercito.personajes().size() <= habitantesMax
    override method serOcupadaPor(ejercito){
       if(self.puedeOcupar(ejercito)){
            super(ejercito)
       }else{
            const nuevoEjercito = new Ejercito(personajes = ejercito.mejoresGuerreros())
            super(nuevoEjercito)
            ejercito.removeAll(nuevoEjercito)
       }
    }
    override method potencialDefensivo() = habitantes.potencialOfensivo()
}

class Ciudad inherits Localidad{

    override method potencialDefensivo() = habitantes.potencialOfensivo() + 300
}

