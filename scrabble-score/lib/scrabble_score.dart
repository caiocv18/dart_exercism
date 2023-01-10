import 'package:scrabble_score/scrabble_maping.dart';

int score(String word){
  ScrabbleMapping map = new ScrabbleMapping();
  List letters = word.split("");
  int sum = 0;
  for(var i in letters){
    for(var l in map.letterPoints.keys){
      if(i.toString().toUpperCase() == l){
        sum += map.letterPoints[l]!;
      }
    }
  }
  return sum;
}