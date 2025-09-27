object huevoRepostero {
    method esDeChocolateBlanco() = true
    method esDeChocolateConLeche() = false
    method esDeChocolateAmargo() = false
    method calorias() = 750
}

object huevoMixto {
    method esDeChocolateBlanco() = true
    method esDeChocolateConLeche() = true
    method esDeChocolateAmargo() = false
    method caloriasChocoBlanco() = 500
    method caloriasChocoConLeche() = 400
    method calorias() = self.caloriasChocoBlanco() + self.caloriasChocoConLeche()

}

object conejo {
    var peso = 10
    method pesoDelConejo(unPeso) {
      peso = unPeso
    }
    method esDeChocolateBlanco() = false
    method esDeChocolateConLeche() = false
    method esDeChocolateAmargo() = true
    method calorias() = peso * 10
}

object blisterHuevitos {
    var property huevitos = 3
    method calorias() = huevitos * 100 + huevitos.div(5) * 150
    method esDeChocolateBlanco() = huevitos >= 5
    method esDeChocolateConLeche() = true
    method esDeChocolateAmargo() = false
}

object matrioshka {
    var property huevoEnSuInterior = huevoRepostero
    var property tipoDeDecoracion = arbol
    method calorias() = 3000 + huevoEnSuInterior.calorias() + tipoDeDecoracion.calorias() 
    method esDeChocolateBlanco() = huevoEnSuInterior.esDeChocolateBlanco()
    method esDeChocolateConLeche() = tipoDeDecoracion.esDeChocolateConLeche()
    method esDeChocolateAmargo() = true
}

object arbol {
    method calorias() = 150
    method esDeChocolateBlanco() = false
    method esDeChocolateConLeche() = true
    method esDeChocolateAmargo() = false
}

object flor {
    var property cantidadDePetalos = 5
    method calorias() = cantidadDePetalos * 100
    method esDeChocolateBlanco() = false
    method esDeChocolateConLeche() = true
    method esDeChocolateAmargo() = false
}