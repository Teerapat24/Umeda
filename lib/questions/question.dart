import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:umeda/questions/quest_model.dart';
import 'package:umeda/symptom/symptom.dart';

class Question_screen extends StatefulWidget {

  @override
  State<Question_screen> createState() => _Question_screenState();
}

class _Question_screenState extends State<Question_screen> {
  late PageController _controller;
  int _questionNumber =1;
  int allQuestions = questions.length;



  @override
  void initState(){
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text((100 * ((_questionNumber-1)/allQuestions)).toStringAsFixed(1)+'%  Completed',style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: () {
            questions.clear();
          },
          child: Icon(Icons.arrow_back_ios),
          ),
        actions: [
         InkWell(
          onTap: () {
            questions.clear();
            Navigator.pop(context);
            // Navigator.push(context, MaterialPageRoute(builder: (context)=>symptonScreen()));
          },
           child: Container(
              margin: const EdgeInsets.only(right: 12),
              child: Icon(Icons.close),
            ),
         )
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('lib/images/bg5.png'),fit: BoxFit.cover,opacity: .8)
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(
              sigmaX: 8.0,
              sigmaY: 8.0,
            ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(10, 90, 10, 10),
                width: double.infinity,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromARGB(255, 222, 222, 222).withOpacity(.4),
                ),
                child: Stack(
                  children: [
                    LayoutBuilder(
                      builder: (context,constraints)=>Container(
                        width: constraints.maxWidth * ((_questionNumber-1)/allQuestions),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.8, 1),
            colors: <Color>[
              Color.fromARGB(255, 100, 74, 248),
              Color.fromARGB(255, 99, 151, 247),
              Color.fromARGB(255, 145, 196, 255),
            ],
          ),
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              blurRadius: 2
                            ),
                          ]
                        ),
                      )
                      ),
                  ],
                ),
              ),
              const Divider(thickness: 1,color: Color.fromARGB(255, 255, 255, 255),),
              Expanded(
                child:PageView.builder(
                  controller: _controller,
                  itemCount: questions.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder:((context, index) {
                    final _question = questions[index];
                    return buildQuestion(_question);
                  }),
                  ) 
                ),
            ],
          ),
        ),
      ),
    );
  }

  Column buildQuestion(Question question){
  return Column(
    children: [
      Container(
        color: Colors.black.withOpacity(.1),
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 50),
        margin: const EdgeInsets.only(bottom: 20),
        width: double.infinity,
        child: Text(question.quest,textAlign: TextAlign.center,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.white),)
        ),
      Expanded(
        child: OptionWidget(
          question: question,
          onClickedOption: (option){
            if(question.isLocked){
              return;
            }else{
              setState(() {
                // question.isLocked = true;
                question.selectedOption = option;
                _controller.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut
                );
                if(_questionNumber<allQuestions){
                  _questionNumber++;
                }else if(_questionNumber==allQuestions){
                  _questionNumber++;
                  Timer(Duration(milliseconds: 500),(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Success()));
                  }));
                  questions.clear();
                }
              });
            }
          },
        ),
      ),
    ],
  );
}
}



class OptionWidget extends StatelessWidget {
  final Question question;
  final ValueChanged<Option> onClickedOption;
  const OptionWidget({Key? key,
  required this.question,
  required this.onClickedOption,
  }):super(key: key);
  

  Widget buildOption(BuildContext context,Option option){
    final borderColor = getColorForOptionBorder(option,question);
    final txtColor = getColorForOptionTxt(option,question);
    final bgColor = getGradientForOptionBg(option,question);
    return GestureDetector(
      onTap: () => onClickedOption(option),
      child: Container(
        height: 70,
        margin: const EdgeInsets.fromLTRB(15, 10, 15, 10),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          gradient: bgColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: borderColor),
          boxShadow: [
            BoxShadow(
              color: borderColor,
              blurRadius: 15
            )
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: 20,),
            Text(option.quest,textAlign: TextAlign.center,style: TextStyle(color: txtColor,fontSize: 16),)
          ],
        ),
      ),
    );
  }

  Color getColorForOptionBorder(Option option,Question question){
    final isSelected = option == question.selectedOption;
    if(question.isLocked){
      if(isSelected){
        return const Color.fromARGB(121, 255, 255, 255);
      }
    }
    return Colors.grey.withOpacity(.3);
  }

  Color getColorForOptionTxt(Option option,Question question){
    final isSelected = option == question.selectedOption;
    if(question.isLocked){
      if(isSelected){
        return const Color.fromARGB(255, 255, 255, 255);
      }
    }
    return const Color.fromARGB(255, 0, 0, 0);
  }
  Gradient getGradientForOptionBg(Option option,Question question){
    final isSelected = option == question.selectedOption;
    if(question.isLocked){
      if(isSelected){
        return const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.8, 1),
            colors: <Color>[
              // Color.fromARGB(255,68,103,196),
              Color.fromARGB(255,101,155,223),
              Color.fromARGB(255,135,206,251),
            ],
          );
      }
    }
    return const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.8, 1),
            colors: <Color>[
              Color.fromARGB(255, 255, 255, 255),
              Color.fromARGB(255, 255, 255, 255),
            ],
          );
  }

  @override
  Widget build(BuildContext context)=> SingleChildScrollView(
    child: Column(
      children: question.options.map((option) => buildOption(context,option)).toList(),
    ),
  );
}


class Success extends StatefulWidget {
  const Success({super.key});

  @override
  State<Success> createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
            Navigator.pop(context);
          },
          child: Text('หมด'),
        ),
      ),
    );
  }
}