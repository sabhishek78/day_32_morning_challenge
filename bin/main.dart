import 'dart:io';

// Challenge
// Shiritori Game
// This challenge is an English twist on the Japanese word game Shiritori.
// The basic premise is to follow two rules:
//
// 1. First character of next word must match last character of previous word.
// 2. The word must not have already been said.

// Write a Shiritori class that has two instance properties:
// - words: a list of words already said.
// - game_over: a boolean that is true if the game is over.
//  and two instance methods:
//
// - play: a method that takes in a word as an argument and checks if it is valid
// (the word should follow rules #1 and #2 above).
// - restart: a method that sets the words list to an empty one [] and sets the
// game_over boolean to false. It should return "game restarted".
class Shiritori {
  bool game_over = false;
  List<String> words = [];
  bool play(String word) {
    if (words.isEmpty) {
      game_over = false;
      words.add(word);

      return true;
    } else if (words.contains(word)) {
      game_over = true;
      return false;
    }

    else if (words.last[words.last.length - 1] == word[0] ||
        words.last[words.last.length - 1] == word[0].toLowerCase()) {
      game_over = false;
      words.add(word);
      print(words);
      return true;
    }
    else if (word == null) {
      game_over = true;
      return false;
    }
    else {
      game_over = true;
      return false;
    }
  }
  void restart() {
    print("Game Restarted");
    game_over = false;
    words = [];
  }
}





main() {
  Shiritori newGame = Shiritori();
  newGame.restart();
  print(newGame.play("Hello"));
  print(newGame.play("orange"));
  print(newGame.play("eagle"));
  print(newGame.play("fox"));
}
