void main() {
  final persona = {                             //de esta manera podemos crear un MAP donde lleva clave - valor
    'firstname': 'juan',
    'secondname': 'camilo',
    'age': 25,
    'aslive': true,
    'abilities': ['strong','speed','agil']
  };
  
  print('first name is ${persona['firstname']}');
  print('second name is ${persona['secondname']}');
  
}