import 'package:test/test.dart';
import '../bin/main.dart';

void main() {
  String name = 'Ashish';
  print(name.length);
  print('hello');
  test('Tes11t if words are chained properly', (){
    Shiritori shirotori = Shiritori();

    expect(shirotori.play, true);
  });
  test('Test if words are not repeated', (){
    Shiritori shirotori = Shiritori();
    shirotori.words = ['apple', 'cabbage', 'shrimp', 'doom', 'doom'];
    expect(shirotori.words.length == shirotori.words.toSet().length, true);
  });
  test('Check if game over is working', (){
    Shiritori shirotori = Shiritori();
    shirotori.words = ['apple', 'cabbage', 'shrimp', 'doom', 'doom'];
    expect((shirotori.words.length != shirotori.words.toSet().length && shirotori.game_over == true), true);
  });
  test('Test if restart is working', (){
    Shiritori shirotori = Shiritori();
    shirotori.words = ['apple', 'cabbage', 'shrimp', 'doom', 'doom'];
    shirotori.game_over = true;
    shirotori.restart();
    expect((shirotori.words == [] && shirotori.game_over == false), true);
  });
}
