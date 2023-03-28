import 'dart:async';

import 'package:flutter/material.dart';
import 'package:umeda/questions/quest_model.dart';
import 'package:umeda/questions/question.dart';

class symptonScreen extends StatelessWidget {
  const symptonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(height: 700, child: sympton()),
            const button(),
          ],
        ),
      ),
    );
  }
}

class searchBar extends StatefulWidget {
  const searchBar({super.key});

  @override
  State<searchBar> createState() => _searchBarState();
}

class _searchBarState extends State<searchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      margin: EdgeInsets.all(10),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'ค้นหาอาการ...',
          labelStyle: TextStyle(fontSize: 15),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.blue,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class sympton extends StatefulWidget {
  const sympton({super.key});

  @override
  State<sympton> createState() => _symptonState();
}

class _symptonState extends State<sympton> {
  int _selectedIndex = 0;

  List screens = [
    one(),
    two(),
    three(),
    four(),
    five(),
  ];

  @override
  Widget build(BuildContext context) {
    // TabController tabController = TabController(length: 3, vsync: this);
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            toolbarHeight: 100,
            title: const searchBar(),
            backgroundColor: const Color.fromARGB(255, 194, 226, 255),
            elevation: 0,
            bottom: TabBar(
                isScrollable: true,
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.black.withOpacity(.5),
                indicatorSize: TabBarIndicatorSize.label,
                indicator: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    color: Colors.white),
                tabs: [
                  Container(
                    padding:
                        const EdgeInsets.only(left: 12, right: 12, bottom: 6),
                    child: Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(2),
                              height: 45,
                              child: const Image(
                                image: AssetImage('lib/images/px01.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Text(
                              'หู คอ จมูก',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            )
                          ],
                        )),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(left: 12, right: 12, bottom: 6),
                    child: Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(4),
                              height: 45,
                              child: const Image(
                                image: AssetImage('lib/images/px02.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Text(
                              'ทางเดินอาหาร',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            )
                          ],
                        )),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(left: 12, right: 12, bottom: 6),
                    child: Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(2),
                              height: 45,
                              child: const Image(
                                image: AssetImage('lib/images/px03.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Text(
                              'ผิวหนัง',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            )
                          ],
                        )),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(left: 12, right: 12, bottom: 6),
                    child: Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(4),
                              height: 45,
                              child: const Image(
                                image: AssetImage('lib/images/px04.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Text(
                              'กล้ามเนื้อ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            )
                          ],
                        )),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(left: 12, right: 12, bottom: 6),
                    child: Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(4),
                              height: 45,
                              child: const Image(
                                image: AssetImage('lib/images/px05.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Text(
                              'เรื่องเพศ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            )
                          ],
                        )),
                  ),
                ]),
          ),
          body: const TabBarView(children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: one(),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: two(),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: three(),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: four(),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: five(),
            ),
          ]),
        ));
  }
}

class box extends StatelessWidget {
  box({required this.Txt});
  String Txt;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Text(
                  Txt,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 17, 9, 63)),
                ),
              ),
              checkBox(),
            ],
          ),
        ),
        Divider(
          color: Colors.grey,
          height: 1,
        ),
      ],
    );
  }
}

class checkBox extends StatefulWidget {
  const checkBox({super.key});

  @override
  State<checkBox> createState() => _checkBoxState();
}

class _checkBoxState extends State<checkBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      if (isChecked == true) {
        return Colors.blue;
      } else {
        return Colors.grey;
      }
    }

    return Checkbox(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? val) {
        setState(() {
          isChecked = val!;
        });
      },
    );
  }
}

TextStyle ts = TextStyle(
    color: Color.fromARGB(255, 30, 66, 211),
    fontSize: 20,
    fontWeight: FontWeight.bold);

bool a1 = false;
bool a2 = false;
bool a3 = false;
bool b1 = false;
bool b2 = false;
bool b3 = false;
bool c1 = false;
bool c2 = false;
bool c3 = false;
bool c4 = false;
bool d1 = false;
bool d2 = false;
bool e1 = false;
bool e2 = false;

var text_a1 = 'แผลร้อนใน';
var text_a2 = 'ไอ';
var text_a3 = 'เจ็บคอ';
var text_b1 = 'ปวดท้อง';
var text_b2 = 'ท้องอืด/ท้องเฟ้อ';
var text_b3 = 'ท้องผูก';
var text_c1 = 'ผื่นคัน';
var text_c2 = 'ผิวแพ้ง่าย';
var text_c3 = 'ผิวแห้ง';
var text_c4 = 'สิว';
var text_d1 = 'ปวดตึง';
var text_d2 = 'ปวดร้าว';
var text_e1 = 'ประจำเดือน';
var text_e2 = 'ฮอร์โมนเพศหญิง';

class one extends StatefulWidget {
  const one({super.key});

  @override
  State<one> createState() => _oneState();
}

class _oneState extends State<one> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'หู คอ จมูก',
          style: TextStyle(
              color: Colors.blue, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
          child: CheckboxListTile(
              title: Text(text_a1, style: ts),
              activeColor: Colors.blue,
              value: a1,
              onChanged: ((val) {
                setState(() {
                  a1 = !a1;
                });
              })),
        ),
        Divider(
          color: Colors.grey,
          height: 2,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
          child: CheckboxListTile(
              title: Text(text_a2, style: ts),
              activeColor: Colors.blue,
              value: a2,
              onChanged: ((val) {
                setState(() {
                  a2 = !a2;
                });
              })),
        ),
        Divider(
          color: Colors.grey,
          height: 2,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
          child: CheckboxListTile(
              title: Text(text_a3, style: ts),
              activeColor: Colors.blue,
              value: a3,
              onChanged: ((val) {
                setState(() {
                  a3 = !a3;
                });
              })),
        ),
        Divider(
          color: Colors.grey,
          height: 2,
        ),
      ],
    );
  }
}

class two extends StatefulWidget {
  const two({super.key});

  @override
  State<two> createState() => _twoState();
}

class _twoState extends State<two> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'ทางเดินอาหาร',
          style: TextStyle(
              color: Colors.blue, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
          child: CheckboxListTile(
              title: Text(text_b1, style: ts),
              activeColor: Colors.blue,
              value: b1,
              onChanged: ((val) {
                setState(() {
                  b1 = !b1;
                });
              })),
        ),
        Divider(
          color: Colors.grey,
          height: 2,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
          child: CheckboxListTile(
              title: Text(text_b2, style: ts),
              activeColor: Colors.blue,
              value: b2,
              onChanged: ((val) {
                setState(() {
                  b2 = !b2;
                });
              })),
        ),
        Divider(
          color: Colors.grey,
          height: 2,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
          child: CheckboxListTile(
              title: Text(text_b3, style: ts),
              activeColor: Colors.blue,
              value: b3,
              onChanged: ((val) {
                setState(() {
                  b3 = !b3;
                });
              })),
        ),
        Divider(
          color: Colors.grey,
          height: 2,
        ),
      ],
    );
  }
}

class three extends StatefulWidget {
  const three({super.key});

  @override
  State<three> createState() => _threeState();
}

class _threeState extends State<three> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'ผิวหนัง',
          style: TextStyle(
              color: Colors.blue, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
          child: CheckboxListTile(
              title: Text(text_c1, style: ts),
              activeColor: Colors.blue,
              value: c1,
              onChanged: ((val) {
                setState(() {
                  c1 = !c1;
                });
              })),
        ),
        Divider(
          color: Colors.grey,
          height: 2,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
          child: CheckboxListTile(
              title: Text(text_c2, style: ts),
              activeColor: Colors.blue,
              value: c2,
              onChanged: ((val) {
                setState(() {
                  c2 = !c2;
                });
              })),
        ),
        Divider(
          color: Colors.grey,
          height: 2,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
          child: CheckboxListTile(
              title: Text(text_c3, style: ts),
              activeColor: Colors.blue,
              value: c3,
              onChanged: ((val) {
                setState(() {
                  c3 = !c3;
                });
              })),
        ),
        Divider(
          color: Colors.grey,
          height: 2,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
          child: CheckboxListTile(
              title: Text(text_c4, style: ts),
              activeColor: Colors.blue,
              value: c4,
              onChanged: ((val) {
                setState(() {
                  c4 = !c4;
                });
              })),
        ),
        Divider(
          color: Colors.grey,
          height: 2,
        ),
      ],
    );
  }
}

class four extends StatefulWidget {
  const four({super.key});

  @override
  State<four> createState() => _fourState();
}

class _fourState extends State<four> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'กล้ามเนื้อ',
          style: TextStyle(
              color: Colors.blue, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
          child: CheckboxListTile(
              title: Text(text_d1, style: ts),
              activeColor: Colors.blue,
              value: d1,
              onChanged: ((val) {
                setState(() {
                  d1 = !d1;
                });
              })),
        ),
        Divider(
          color: Colors.grey,
          height: 2,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
          child: CheckboxListTile(
              title: Text(text_d2, style: ts),
              activeColor: Colors.blue,
              value: d2,
              onChanged: ((val) {
                setState(() {
                  d2 = !d2;
                });
              })),
        ),
        Divider(
          color: Colors.grey,
          height: 2,
        ),
      ],
    );
  }
}

class five extends StatefulWidget {
  const five({super.key});

  @override
  State<five> createState() => _fiveState();
}

class _fiveState extends State<five> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'เรื่องเพศ',
            style: TextStyle(
                color: Colors.blue, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
            child: CheckboxListTile(
                title: Text(text_e1, style: ts),
                activeColor: Colors.blue,
                value: e1,
                onChanged: ((val) {
                  setState(() {
                    e1 = !e1;
                  });
                })),
          ),
          Divider(
            color: Colors.grey,
            height: 2,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
            child: CheckboxListTile(
                title: Text(text_e2, style: ts),
                activeColor: Colors.blue,
                value: e2,
                onChanged: ((val) {
                  setState(() {
                    e2 = !e2;
                  });
                })),
          ),
          Divider(
            color: Colors.grey,
            height: 2,
          ),
        ],
      ),
    );
  }
}

class button extends StatefulWidget {
  const button({super.key});

  @override
  State<button> createState() => _buttonState();
}

class _buttonState extends State<button> {
  Color colorBtn = Colors.grey;
  var _Navigator;

  Timer? _timer;
  void activeBtn() {
    //  _timer=Timer.periodic(Duration(milliseconds: 500), (_) {
    if (a1 == false &&
        a2 == false &&
        a3 == false &&
        b1 == false &&
        b2 == false &&
        b3 == false &&
        c1 == false &&
        c2 == false &&
        c3 == false &&
        c4 == false &&
        d1 == false &&
        d2 == false &&
        e1 == false &&
        e2 == false) {
      setState(() {
        colorBtn = Colors.grey;
      });
    } else {
      setState(() {
        colorBtn = Colors.blue;
      });
    }
    // }
    // );
  }

  @override
  Widget build(BuildContext context) {
    activeBtn();
    return Container(
      margin: EdgeInsets.fromLTRB(100, 10, 100, 10),
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
        onPressed: () {
          if (colorBtn == Colors.blue) {
            if (a1 == true) {
              questionsA.forEach((element) => questions.add(element));
            }
            if (a2 == true) {
              questionsB.forEach((element) => questions.add(element));
            }

            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Question_screen()));
          }
        },
        style: ElevatedButton.styleFrom(
          primary: colorBtn,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        ),
        child: Text('ถัดไป',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
