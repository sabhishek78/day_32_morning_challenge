import 'dart:convert';

import 'package:test/test.dart';
import '../bin/main.dart';

void main() {
  Shiritori game1 = Shiritori();
  test('Shiritori', () {
    expect(game1.play("hello"),true);
    expect(game1.play("orange"),true);
    expect(game1.play("eagle"),true);
    expect(game1.play("ear"),true);
    expect(game1.play("camel"),false);
    game1.restart();
    expect(game1.play("hello"),true);
  });
}
