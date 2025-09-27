import huevosDePascua.*


object ana {
    const huevosComidos = []
    method comerHuevo(unHuevo) {
        huevosComidos.add(unHuevo)
    }
    method comioMasDe5000() = huevosComidos.sum({x => x.calorias()}) > 5000
    method hayAlgunoDeChocoBlanco() = huevosComidos.any({x => x.esDeChocolateBlanco()})
    method estaEnfermo(){
        return self.comioMasDe5000() or self.hayAlgunoDeChocoBlanco()
    }
}

object jose {
    var ultimoHuevoComido = huevoMixto
    method comerHuevo(unHuevo) {
        ultimoHuevoComido = unHuevo
    }
    method estaEnfermo() = ultimoHuevoComido.esDeChocolateAmargo()
}

object tito {
    method comerHuevo(unHuevo) {}
    method estaEnfermo() = false
}