void main() {
  // List of student scores
  List<int> scores = [45, 67, 82, 49, 51, 78, 92, 30];

  // You code
  var passScores= scores.where((test)=>test>=50);
  print(passScores.toList());
  print("${passScores.length} students are passed.");

 
}