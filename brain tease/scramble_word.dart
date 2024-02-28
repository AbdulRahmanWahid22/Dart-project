import 'dart:io';
import 'dart:math';

void main() {
  print(scramble());
}

scramble() {
  print("Welcome to Word Scramble");
  print("Unscramble the letter to from a word");

  List<String> words = [
    "programming",
    "algorithm",
    "array",
    "analysis",
    "server",
    "memory",
    "register",
    "stack",
    "variabe",
    "debugging"
  ];
  Random random = Random();
  var scrambleWord = words[random.nextInt(words.length)];
  List<String> secretWords = scrambleWord.split('')..shuffle(random);
  print("Scramble word is:${secretWords.join()}");
  print("");
  int attempt = 3;
  bool isAttempt = false;
  String guess;
  while (isAttempt == false) {
    stdout.write("Enter your guess:");
    String? guess = stdin.readLineSync();
    // if (guess == null) {
    //   print("Enter a correct word");
    //   isAttempt = false;
    // }
    if (guess != scrambleWord) {
      print("Incorrect guess. Try again.");
      attempt--;
      print("Attempts left :$attempt");
      isAttempt = false;
    } else if (guess == scrambleWord) {
      print("Congratulations, you Unscramble the word correctly");
      isAttempt = true;
      
    }
    // } else if (guess.length < scrambleWord.length) {
    //   print("Enter a full word");
    //   isAttempt = false;
    // }
    if (attempt == 0) {
      print("Sorry you've run out of attempts");
      print("");
      print("The corrrect word was $scrambleWord");
      isAttempt = true;
    }
  }
}
