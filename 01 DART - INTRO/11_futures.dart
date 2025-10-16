void main() async{
  print('hola bienvenido quien eres');

  try{
  String nombrepersona = await datospersona();
  print('hola soy $nombrepersona');
  }
  catch (e){
    print('error no se pudo obtener la nombre: $e');
  }

  try{
  int epersona = await edadpersona();
  print('mi edad es de $epersona');
  }
  catch (e){
    print('no se pudo obtener la edad: $e');
  }
}

Future<String> datospersona() async{
  
  await Future.delayed(Duration(seconds: 2));
  return 'camilo';
}

Future<int> edadpersona() async{
  
  await Future.delayed(Duration(seconds: 3));
  return 26;
}




//----------------------------------------------------------------------------------

void main() {
  
  print('Inicio del programa');
  
  httpGet('https://fernando-herrera.com/cursos')
    .then( 
      (value){
        print( value );
      })
    .catchError( (err) {
    print('Error: $err');
  });
  
  print('Fin del programa');
}


Future<String> httpGet( String url ){
  
  return Future.delayed( const Duration(seconds: 1), () {
    
    throw 'Error en la petición http';
    
//     return 'Respuesta de la petición http';
    
  });
  
}