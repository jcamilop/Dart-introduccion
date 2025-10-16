void main(){
  numbers().listen((value){
    print('stream value: $value');
  });
}


Stream<int> numbers(){
  return Stream.periodic(Duration(seconds: 2),(value){
    return value;
  }).take(6);
}