import huevosDePascua.*
import chicosYChichas.*

object caceria {
    const huevosEscondidos = []
    const huevosEncontrados = []
    method iniciarJuego() {
        flor.cantidadDePetalos(7)
        matrioshka.tipoDeDecoracion(flor)
        blisterHuevitos.huevitos(14)
        matrioshka.huevoEnSuInterior(blisterHuevitos)
        huevosEscondidos.addAll([matrioshka, huevoRepostero, conejo, huevoMixto])
    }
    method huevosNoEncontrados() = huevosEscondidos.size()
    method huevosNoEncontradosConChocolateBlanco() = huevosEscondidos.count({x => x.esDeChocolateBlanco()})
    method huevoAunNoEncontrado(unHuevo) = huevosEscondidos.contains(unHuevo)
    method encontrarUnHuevoPor(unHuevo, unChico) {
      unChico.comerHuevo(unHuevo)
      huevosEscondidos.remove(unHuevo)
      huevosEncontrados.add(unHuevo)
    }
    method encontrarElPrimerHuevoPor(unChico) {
      self.encontrarUnHuevoPor(huevosEscondidos.first(), unChico)
    }
    method encontrarLosHuevosRestantes(unChico) {
      huevosEscondidos.forEach({x => self.encontrarUnHuevoPor(x, unChico)})
    }
    method huevosNoEncontradosBlancos() = huevosEscondidos.filter({x => x.esDeChocolateBlanco()})
    method huevoNoEncontradoConLaMayorCaloria() = huevosEscondidos.max({ x => x.calorias()})

}
