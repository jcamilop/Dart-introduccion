void main() {
 Carro mazda = Carro();
  mazda.acelera();
  mazda.giraAlaDerecha();
  mazda.frena();
  mazda.puertas();
  mazda.luces();
}

abstract class Conduccion{
  void acelera();
  void frena();
  void giraAlaDerecha();
  void giraAlaIzquierda();
}

class Carro extends Conduccion with Puerta, Luz{
  
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

mixin Luz{
  void luces(){
    print('el carro enciende las luces');
  }
}

mixin Puerta{
  void puertas(){
    print('el carro abre sus purtas');
  }
}

//----------------------------------------------------------------------------

abstract class Animal {}

abstract class Mamifero extends Animal {}
abstract class Ave extends Animal {}
abstract class Pez extends Animal {}

mixin Volador {
  void volar() => print('estoy volando!');
}

mixin Caminante {
  void caminar() => print('estoy caminando!');
}

mixin Nadador {
  void nadar() => print('estoy nadando!');
}


class Delfin extends Mamifero with Nadador {}
class Murcielago extends Mamifero with Volador, Caminante {}
class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Caminante, Volador {}
class Pato extends Ave with Caminante, Volador, Nadador {}

class Tiburon extends Pez with Nadador {}
class PezVolador extends Pez with Nadador, Volador {}


void main() {
  
  final flipper = Delfin();
  flipper.nadar();
  
  final batman = Murcielago();
  batman.caminar();
  batman.volar();
  
  
  final namor = Pato();
  namor.caminar();
  namor.volar();
  namor.nadar();
   
}