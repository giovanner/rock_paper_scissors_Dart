import 'dart:io';
import 'dart:math';

void main() {
  final rng = Random();

  while (true) {
    stdout.write('Rock Paper or Scissor? (r/p/s)');
    final inputUser = stdin.readLineSync();
    if (inputUser == 'r' || inputUser == 'p' || inputUser == 's') {
      print('player selected $inputUser');
      final IAMove = rng.nextInt(3);
      switch (IAMove) {
        case 0:
          print('IA selected Rock');
          if (inputUser == 'r') {
            print('It\'s a DRAW ');
          } else if (inputUser == 's') {
            print('You lost ');
          } else {
            print('You won! ');
          }
          break;
        case 1:
          print('IA selected Scissors');
          if (inputUser == 's') {
            print('It\'s a DRAW ');
          } else if (inputUser == 'p') {
            print('You lost ');
          } else {
            print('You won! ');
          }
          break;
        case 2:
          print('IA selected Paper');
          if (inputUser == 'p') {
            print('It\'s a DRAW ');
          } else if (inputUser == 'r') {
            print('You lost ');
          } else {
            print('You won! ');
          }
          break;
      }
    } else if (inputUser == 'ext') {
      print('Thank you for play');
      break;
    } else {
      print(
          '$inputUser is not a valid insert please chose between r,p,s or ext to Exit the game ');
    }
  }
}
