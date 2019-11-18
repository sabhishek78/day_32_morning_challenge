import 'dart:convert';

import 'package:test/test.dart';
import '../bin/main.dart';

void main() {
  Shiritori game = Shiritori();
  test('Shiritori', () {
    expect(game.play("hellO"),true);
    expect(game.play("orange"),true);
    expect(game.words.isEmpty ,false);
    expect(game.play("cat"),false);
    expect(game.game_over,true);
    game.restart();
    expect(game.words.isEmpty,true);
    expect(game.game_over, false);
    expect(game.play("ear"),true);
    expect(game.play("ear"),false);
    expect(game.words.length == 1,true);
    game.restart();
    expect(game.play("hello"),true);
    //TODO gameover, repetition, return value of reatart, words list size
  });
}
