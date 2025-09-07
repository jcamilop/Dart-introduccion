void main() {
  final numero = [1,2,3,4,5,6,7,7,7,8,9,10,11,11,11,12];
    print(numero);
    print('longitud de la lista ${numero.length}');
    print(numero.first);
    print(numero[0]);
    print(numero.reversed);
  
  final reversednumero = numero.reversed;
    print(reversednumero);
    print('numero en set ${reversednumero.toSet()}');
    print('numero en lista ${reversednumero.toList()}');
  
  final numeromayora5 = numero.where((num) {
    return num > 5;
    
  });
  
    print(numeromayora5);
    print(numeromayora5.toList());
    print(numeromayora5.toSet());
    
  }