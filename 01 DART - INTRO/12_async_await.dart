void main() async{
  print('hola bienvenido quien eres');
  
  try{
  final nombrepersona = await datospersona();
  print('hola soy $nombrepersona');
  }
  catch (e){
    print('❌ No se pudo obtener el nombre: $e');
  }
  
  try{
  final epersona = await edadpersona();
  print('mi edad es de ${epersona} años');
  }
  
  catch (e){
    print('❌ No se pudo obtener la edad: ${e}');
  }
  
  print('un gusto en conocerte');
  
}

Future<String> datospersona() async{
  
  await Future.delayed(Duration(seconds: 2));
  return 'camilo';
}

Future<int> edadpersona() async{
  
  await Future.delayed(Duration(seconds: 2));
  return 26;
}