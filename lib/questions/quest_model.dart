class Question{
  final String quest;
  final  List<Option> options;
  bool isLocked;
  Option? selectedOption;

  Question({
    required this.quest,
    required this.options,
    this.isLocked = false,
    this.selectedOption,
  });
}

class Option{
  final String quest;
  final String answer;
  Option({
    required this.quest,
    required this.answer,
  });
}

final questions=[
 
];

final questionsA=[
  Question(
    quest: 'A1', 
    options: [
       Option(quest: 'เอาแบบดีมาเลย', answer: 'a1'),
       Option(quest: 'ธรรมดา', answer: 'a2'),
      //  Option(quest: '3', answer: 'a3'),
      //  Option(quest: '4', answer: 'a4'),
    ]
    ),
  Question(
    quest: 'A2', 
    options: [
       Option(quest: 'สั้นก็ได้', answer: 'a1'),
       Option(quest: 'ยาว', answer: 'a2'),
       Option(quest: 'ย๊าวยาว', answer: 'a3'),
      //  Option(quest: '4', answer: 'a4'),
    ]
    ),
  Question(
    quest: 'A3',
    options: [
       Option(quest: 'อัดแก๊ส', answer: 'a1'),
       Option(quest: 'อัดลม', answer: 'a2'),
      //  Option(quest: '3', answer: 'a3'),
      //  Option(quest: '4', answer: 'a4'),
    ]
    ),
  Question(
    quest: 'A4', 
    options: [
       Option(quest: 'แม็กกาซีน', answer: 'a1'),
       Option(quest: 'ลูกโม่', answer: 'a2'),
    ]
    ),
  Question(
    quest: 'A5', 
    options: [
       Option(quest: 'ดำด้าน', answer: 'a1'),
       Option(quest: 'ดำเงา', answer: 'a2'),
    ]
    ),
];
final questionsB=[
  Question(
    quest: 'B1',
    options: [
       Option(quest: 'อัดแก๊ส', answer: 'a1'),
       Option(quest: 'อัดลม', answer: 'a2'),
      //  Option(quest: '3', answer: 'a3'),
      //  Option(quest: '4', answer: 'a4'),
    ]
    ),
  Question(
    quest: 'B2', 
    options: [
       Option(quest: 'แม็กกาซีน', answer: 'a1'),
       Option(quest: 'ลูกโม่', answer: 'a2'),
    ]
    ),
  Question(
    quest: 'B3', 
    options: [
       Option(quest: 'ดำด้าน', answer: 'a1'),
       Option(quest: 'ดำเงา', answer: 'a2'),
    ]
    ),
];