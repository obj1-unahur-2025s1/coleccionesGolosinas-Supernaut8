import golosinas.*

object mariano {´
    const golosinas = []
    method comprar(unaGolosina) {golosinas.add(unaGolosina)}
    method desechar(unaGolosina) {golosinas.remove(unaGolosina)}
    method cantidadDeGolosinas() = golosinas.size()
    method tieneLaGolosina(unaGolosina) = golosinas.contains(unaGolosina)
    method probarGolosinas() {golosinas.forEach({g => g.recibirMordisco()})}
    method hayGolosinaSinTACC() = golosinas.any({g => !g.contieneGluten()})
    method preciosCuidados() = golosinas.all({g => g.precio() < 10})
    method golosinaDeSabor(unSabor) = golosinas.find({g => g.sabor() == unSabor})
    method golosinasDeSabor(unSabor) = golosinas.filter({g => g.sabor() == unSabor})
    method sabores() = golosinas.map({g => g.sabor()}).asSet()
    method golosinaMasCara() = golosinas.max({g => g.precio()})
    method pesoGolosinas() = golosinas.sum({g => g.peso()})
}