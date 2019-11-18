import 'package:test/test.dart';
import '../bin/main.dart';

void main() {
  String name = 'Ashish';
  print(name.length);
  Shiritori shirotori = Shiritori();

  print('hello');
  test('Tes11t if words are chained properly', (){

    expect(shirotori.play, true);
  });
  test('Test if words are not repeated', (){
    expect(shirotori.words.length == shirotori.words.toSet().length, true);
  });
  test('Check if game over is working', (){
    expect((shirotori.words.length != shirotori.words.toSet().length && shirotori == true), true);
  });
  test('Test if restart is working', (){
    shirotori.restart();
    expect((shirotori.words == [] && shirotori.game_over == false), true);
  });
}
