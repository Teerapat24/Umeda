import 'package:flutter/material.dart';

import 'package:umeda/service/countdown.dart';

class Chat extends StatefulWidget {
  int mn;
  Chat({required this.mn});

  @override
  State<Chat> createState() => _ChatState(mn: mn);
}

class _ChatState extends State<Chat> {
  int mn;
  _ChatState({required this.mn});

  void _confirm(){
  showDialog(
    context: context,
    barrierDismissible:  false, 
    builder: (BuildContext context){
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        backgroundColor: Colors.white,
        title: Center(child: Text('ยืนยันการออกจากช่องแชท',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    width: 100,
                    padding: const EdgeInsets.all(12),
                    color: Colors.grey.withOpacity(.5),
                    child: Text('ยกเลิก',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.pop(context);
                    _out();
                  });
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    width: 100,
                    padding: const EdgeInsets.all(12),
                    color: Colors.blue.withOpacity(.8),
                    child: Text('ยืนยัน',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  ),
                ),
              ),
            ],
          )
        ],
      );
    }
    );
}
void _out(){
  Navigator.pop(context);
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            _confirm();
          },
          child:Icon(Icons.arrow_back_ios),),
        title: const Text('ปรึกษาเภสัชกร'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                offset: Offset(0, 0),
                color: Colors.black.withOpacity(.3),
                blurRadius: 3,
              )
            ]),
            child: Expanded(
              child: Row(
                children: [
                  const Image(image: AssetImage('lib/images/med3.png'),width: 50,),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(left: 5),
                      padding: const EdgeInsets.only(top: 10,bottom: 10,left: 10),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 221, 121),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30)
                        ),
                      ),
                      child: const Text('Dr. Firstname Lastname',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),maxLines: 1,overflow: TextOverflow.ellipsis,),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  alignment: Alignment.topRight,
                  child: countdown(mn: mn),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                offset: Offset(0, 0),
                color: Colors.black.withOpacity(.3),
                blurRadius: 3,
              )
            ]),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    
                  },
                  child: const Icon(
                    Icons.add_a_photo_rounded,
                    color: Colors.blue,size: 30,
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 0),
                            color: Colors.black.withOpacity(.3),
                            blurRadius: 3,
                          )
                        ]),
                    child: const TextField(
                      textCapitalization: TextCapitalization.sentences,
                      textInputAction: TextInputAction.send,
                      decoration: InputDecoration(
                          hintText: 'Type a message...',
                          hintStyle: TextStyle(fontSize: 15),
                          border: InputBorder.none),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    
                  },
                  child: const Icon(
                    Icons.send_rounded,
                    color: Colors.blue,size: 30,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
