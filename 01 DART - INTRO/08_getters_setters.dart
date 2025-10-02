void main() {
  
  final mySquare = Square( side: -10 );
  
//   mySquare.side = 5;
  
  
  print( 'área: ${ mySquare.area }' );
  
}

class Square {
  
  double _side; // side * side
  
  
  Square({ required double side })
     : assert(side >= 0, 'side must be >= 0'),
       _side = side;
  
  double get area {
    return _side * _side;
  }
  
  set side( double value ) {
    print('setting new value $value');
    if ( value < 0 ) throw 'Value must be >=0';
    
    _side = value;
      
  }
  
  
  double calculateArea() {
    return _side * _side;
  }
}

//--------------------------------------------------------------

void main() {
  var p = Persona('Camilo', 25);

  print(p.nombre); // Camilo

  p.nombre = 'Andrés'; // Usando el setter
  print(p.nombre); // Andrés
}

class Persona {
  String _nombre;
  int _edad;

  Persona(this._nombre, this._edad);

  // Getter
  String get nombre => _nombre;

  // Setter
  set nombre(String nuevoNombre) {
    if (nuevoNombre.isNotEmpty) {
      _nombre = nuevoNombre;
    }
  }
}

