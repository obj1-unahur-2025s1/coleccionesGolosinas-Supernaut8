// class Golosina {
//   var precio
//   const sabor
//   var peso

//   method cotieneGluten() 
//   method recibirMordisco() {}
// }

class Bombon inherits Golosina {
  var precio = 5
  const property sabor = frutilla
  var peso = 15

  method precio() = precio
  method contieneGluten() = false
  method recibirMordisco() {
    peso = 0.max((peso * 0.8) - 1) 
  }
}
class Alfajor inherits Golosina {
  var precio = 12
  const property sabor = chocolate
  var peso = 300

  method precio() = precio
  method contieneGluten() = true
  method recibirMordisco() {
    peso = 0.max(peso * 0.8)
  }
}
class Caramelo inherits Golosina {
  var precio = 1
  const property sabor = frutilla
  var peso = 5

  method precio() = precio
  method contieneGluten() = false
  method recibirMordisco() {
    peso = 0.max(peso - 1)
  }
}
class Chupetin inherits Golosina {
  var precio = 2
  const property sabor = naranja
  var peso = 7

  method precio() = precio
  method contieneGluten() = false
  method recibirMordisco() {
    if(peso > 2)
      peso = (peso * 0.9)
  }
}
class Oblea inherits Golosina {
  var precio = 5
  const property sabor = vainilla
  var peso = 250

  method precio() = precio
  method contieneGluten() = true
  method recibirMordisco() {
    if(peso > 70)
      peso = (peso * 0.5)
    else
      peso = 0.max(peso * 0.75)
  }
}
class Chocolatin inherits Golosina {
  var precio
  const property sabor = chocolate
  var pesoInicial 
  var peso = pesoInicial

  method precio() = pesoInicial * 0.5
  method contieneGluten() = false
  method recibirMordisco() {
    peso = 0.max(peso - 2)
  }
}
class GolosinaBañada inherits Golosina {
  const oblea1 = new Oblea()
  var golosinaBase = oblea1
  var precio 
  const property sabor = golosinaBase.sabor()
  var pesoInicial = golosinaBase.peso() + 4
  var peso = pesoInicial
  var cantidadDeMordiscos = 0

  method precio() = golosinaBase.precio() + 2
  method contieneGluten() = golosinaBase.contieneGluten()
  method recibirMordisco() {
    golosinaBase.recibirMordisco()
    if (cantidadDeMordiscos < 2)
      peso = peso - 2
      cantidadDeMordiscos + 1
  }
}

object frutilla {
  method saborSiguiente() = chocolate
}
object chocolate {
  method saborSiguiente() = naranja
}
object naranja {
  method saborSiguiente() = frutilla
}
object vainilla {
  method saborSiguiente(){}
}
class Pastilla inherits Golosina {
  var precio
  var contieneGluten
  const property sabor = chocolate
  var pesoInicial = 5
  var peso = pesoInicial

  method precio() = if (self.contieneGluten()) 7 else 10
  method contieneGluten(booleano) {
    contieneGluten = booleano
  }
  method contieneGluten() = contieneGluten
  method recibirMordisco() {
    sabor.saborSiguiente()
  }
}