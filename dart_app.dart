import 'dart:io';

class MathQuestion {

  String question;
  double answer;
  //counsroctor 
  MathQuestion({
    required this.question,
    required this.answer,
  });


}

double getAnswer ( String msg) {
  print( 'Q/ ${msg} ?' );
  //tryparse may retrun null value so to solve the problem
  //use ?? 0.0 , means if user enter null return 0.0
  return double.tryParse(stdin.readLineSync()!)??0.0;

}


void main() {
  //list of MathQuestion object
  var  questions = [
    MathQuestion(question: '4 + 5 ', answer: 9.0) ,
    MathQuestion(question: '8 * 100 ', answer: 800.0) ,
    MathQuestion(question: '8 - 4 ', answer: 4.0) ,

  ];

for (var item in questions) {
    var userAnswer = getAnswer(item.question);
    print ( "Your Ans is $userAnswer" );
    //check
    print(userAnswer == item.answer? "your anser is Correct" : "Wrong");
    print("the Correct Ans is ${item.answer}");
    print("-------------------------");

}







}
