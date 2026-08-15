object pepita {
    var energia = 100

    method volar(distancia) {
   energia = energia - 10 - distancia/10
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
