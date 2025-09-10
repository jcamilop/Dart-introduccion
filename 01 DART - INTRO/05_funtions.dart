void main() {
 print(helloworld());
 print(addhello());
 print('the sum is: ${hellonumbers(1, 5)}');  
 print('the sum is: ${addnumbers(1, 5)}');  
 print(data(name: 'camilo'));
  }

 String helloworld(){               //funcion de con return
  return 'hello everyone';
  
}

String addhello() => 'hello everyone';      //return de tipo flecha

int hellonumbers(int a, int b){
  return (a + b);
  
}

int addnumbers(int a, int b) => a + b;

int addnumbers(int a, int b) => a + b;

String data({required String name, int age = 25}){
  return 'hello sr $name his age is $age' ;
}
