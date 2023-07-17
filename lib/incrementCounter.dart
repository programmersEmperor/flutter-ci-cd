class Incrementer {
  int increment(int inputValue) {
    if(inputValue < 0){
      throw Exception("input should be greater or equal to 0");
    }
   return ++inputValue;
  }

  Future futureIncrement(int inputValue) async{
    return await Future.delayed(const Duration(seconds: 1), ()=> ++inputValue,);
  }
}