void main() {
 print(helloworld());
 print(addhello());
 print('la suma es: ${hellonumbers(1, 5)}');
  print('la suma es: ${addnumbers(1, 5)}');
  }

 String helloworld(){               //funcion de con return
  return 'hola a todos';
  
}

String addhello() => 'hola a todos';      //return de tipo flecha

int hellonumbers(int a, int b){
  return (a + b);
  
}

int addnumbers(int a, int b) => a + b;