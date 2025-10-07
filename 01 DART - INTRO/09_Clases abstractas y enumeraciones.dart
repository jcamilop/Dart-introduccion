void main() {
  Avion1 avioneta = Avion1();
    avioneta.despegue();
    avioneta.aterrizaje();
  
}

abstract class Avion{    // se inicia la clase abstracta 
  void despegue();
  void aterrizaje();
}


class Avion1 extends Avion{       // esta es una extension de la clase abstracta
  void despegue(){
    print('el avion esta despegando');
  }
  void aterrizaje(){
    print('el avion esta aterrizano');
  }
}

//---------------------------------------------------------------------------------------------------------

void main() {
 Carro mazda = Carro();
  mazda.acelera();
  mazda.giraAlaDerecha();
  
}

abstract class Conduccion{
  void acelera();
  void frena();
  void giraAlaDerecha();
  void giraAlaIzquierda();
}

class Carro extends Conduccion{
  
  void acelera(){
    print('el carro  se pone en marcha');
  }
  void frena(){
    print('el carro se detiene');
  }
  void giraAlaDerecha(){
    print('el carro gira hacia la derecha');
  }
  void giraAlaIzquierda(){
    print('el carro gira hacia la izquiersa');
  }
}