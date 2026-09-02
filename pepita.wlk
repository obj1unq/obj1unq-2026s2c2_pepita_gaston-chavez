/*object pepita {
  var energia = 100
  
  method volar() {
    energia = energia - 10
  }
}*/



object pepita {
  var energia = 100

  method volar(distancia) {
    self.validarVolar(distancia)
    energia = energia - 10 - distancia/10
  }

  method validarVolar(distancia){
    if ( self.puedeVolar(distancia).negate()){
      self.error("No hay energia suficiente para volar" + distancia)
    }
  }

  method puedeVolar(distancia) {
    return energia >= self.energiaGastaraAlVolar(distancia) 
  }

  method energiaGastaraAlVolar(distancia) {
    return  10 + distancia /10
  }

  method descansar() {
   energia = energia + 10
 }

 method cansada(){
   return energia < 30
 }

 method comer(alimento) {
    energia = energia + alimento.energiaQueAporta()
 }

  method energia() {
   return energia
 }

 method energia(_energia) {
  energia = _energia
 }
}


object alpiste {
    method energiaQueAporta() {
        return 25
 }
}

object manzana {
  var gradoMadurez = 1
  const base = 20

  method energiaQueAporta(){
    return base * self.escala()
  }

  method escala(){
    return if (gradoMadurez < 3) gradoMadurez else 0
  }
}

object pepon {
  var energia = 30

  method comer(alimento) {
    //self.validarComer(alimento)
    energia = energia + (alimento.energiaQueAporta() / 2)
  }

  method volar(distancia) {
    energia = energia - 20 - 2*distancia
  }

  method estaCansado() {
    return energia < 40
  }

  method energia(_energia) {
    energia = _energia
  }

  method energia() {
    return energia
  }
}
