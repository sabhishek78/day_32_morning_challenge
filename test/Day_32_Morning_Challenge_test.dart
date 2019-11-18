import 'package:test/test.dart';
import '../bin/main.dart';

void main() {
  print('hello');
  test('Test if words are chained properly', (){
    expect(Shiritori.play, true);
  });
  test('Test if words are not repeated', (){
    expect(Shiritori.words == Shiritori.words.toSet(), true);
  });
  test('Check if game over is working', (){
    expect((Shiritori.words != Shiritori.words.toSet() && gameover == true), true);
  });
  test('Test if restart is working', (){
    Shiritori.restart();
    expect((Shiritori.words == [] && gameover == false), true);
  });
}
