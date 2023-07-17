import 'package:flutter_test/flutter_test.dart';
import 'package:unit_integration_test/incrementCounter.dart';

void main(){

  group("incrementer increment method test", () {
    test("incrementer increment method test, increment 1 to 2", (){
      Incrementer incrementer = Incrementer();

      int result = incrementer.increment(1);

      expect(result, 2, reason: "the input is 1, the output should be 2");
    });
    test("incrementer increment method test, increment negative number throws exception", (){
      Incrementer incrementer = Incrementer();

      expect((){incrementer.increment(-1);}, throwsException);
    });
  });

  test("incrementer futureIncrement method test", () async{
    Incrementer incrementer = Incrementer();

    var result = await incrementer.futureIncrement(1);

    expect(result, 1);
    // expect(result, 2);
  });
}