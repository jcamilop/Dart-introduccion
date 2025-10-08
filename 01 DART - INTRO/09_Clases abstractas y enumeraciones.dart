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

//------------------------------------------------------------------------------------------------------------

void main() {

  final windPlant = WindPlant( initialEnergy: 100 );
  final nuclearPlant = NuclearPlant( energyLeft: 1000 );
  
  
  print( 'wind: ${ chargePhone( windPlant ) }' );
  print( 'nuclear: ${ chargePhone( nuclearPlant ) }' );
}


double chargePhone( EnergyPlant plant ) {
  if ( plant.energyLeft < 10 ) {
    throw Exception('Not enough energy');
  }
    
  return plant.energyLeft - 10;
}





enum PlantType { nuclear, wind, water }


abstract class EnergyPlant {
  
  double energyLeft;
  final PlantType type; // nuclear, wind, water
  
  EnergyPlant({ 
    required this.energyLeft, 
    required this.type 
  });
  
  void consumeEnergy( double amount );
  
}

// extends o implements
class WindPlant extends EnergyPlant {
  
  WindPlant({ required double initialEnergy })
      : super( energyLeft: initialEnergy, type: PlantType.wind );
  
  @override
  void consumeEnergy( double amount ) {
    energyLeft -= amount;
  }
}


class NuclearPlant implements EnergyPlant {
  
  @override
  double energyLeft;
  
  @override
  final PlantType type = PlantType.nuclear;
  
  NuclearPlant({ required this.energyLeft });
  
  @override
  void consumeEnergy( double amount ) {
    energyLeft -= (amount * 0.5);
  }
}