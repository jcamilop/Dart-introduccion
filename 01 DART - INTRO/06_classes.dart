void main() {
 
  final Cars marca = Cars('honda', 'bmw', 'mercedes');
  
    print(marca);
    print(marca.tipo1);
    print(marca.tipo2);
}
  
class Cars {
    String tipo1;
    String tipo2;
    String tipo3;
  
    Cars( this.tipo1, this.tipo2, this.tipo3);
    
  }

//--------------------------------------------------------------------


  void main() {
 
  final Persona data1 = Persona(name: 'oscar',lastname: 'franco',age: 32);
  
  print(data1);
  print(data1.name);
  print(data1.lastname);
  print(data1.age);
  }
  
class Persona {
  String name;
  String lastname;
  int age;
  
  Persona( {
     required this.name, 
     required this.lastname, 
     required this.age
     });

  @override
  String toString(){
    return 'hello guys my mane is $name';
  }
}