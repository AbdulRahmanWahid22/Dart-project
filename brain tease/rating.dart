import 'dart:io';

void main() {
  print(rating());
}

rating() {
  print("How did you like our game?Please rate it :1 till 5");
  int ratings = int.parse(stdin.readLineSync()!);
  var isRating = false;
  while (isRating == false) {
    if (ratings <= 2) {
      stdout.write("Tell me what's the problem:");
      String? problem = stdin.readLineSync()!;
      print("Thanks for your feedback");

      isRating = true;
    } else if (ratings > 2 && ratings <= 5) {
      print("Thanks for your response");
      stdout.write("Please give us feedback:");
      String? feedback = stdin.readLineSync();
      print("Thanks for you rate me and gave feedback");
      isRating = true;
    } else if (ratings > 5) {
      print("Please rate out of 5");
      isRating = false;
      ratings = int.parse(stdin.readLineSync()!);
    } else if (ratings != int) {
      print("Please rate in integer");
      isRating = false;
    }
  }
}
