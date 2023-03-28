import 'package:flutter/material.dart';
import 'package:umeda/service/chat.dart';
import 'package:umeda/service/countdown.dart';

class service_fee extends StatefulWidget {
  const service_fee({super.key});

  @override
  State<service_fee> createState() => _service_feeState();
}

class _service_feeState extends State<service_fee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 235, 234, 255),
        elevation: 0,
        title: Text('ค่าบริการ',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
          ),
      ),
      body: Container(
        color: Color.fromARGB(255, 235, 234, 255),
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Container(
            padding: const EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Text('ค่าบริการ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                Text('100 บาท ปรึกษาเภสัชกรเป็นเวลา 15 นาที',style: TextStyle(fontSize: 18,color: Colors.black),),
                SizedBox(
            height: 20,
          ),
          minute(),
          SizedBox(
            height: 50,
          ),
          payment(),
              ],
            ),
          ),
          const nextBtn(),
          ],
        ),
      ),
    );
  }
}
int mn = 15;
int pay = 100;
class minute extends StatefulWidget {
  const minute({super.key});

  @override
  State<minute> createState() => _minuteState();
}

class _minuteState extends State<minute> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          Text('ต้องการปรึกษา',style: TextStyle(fontSize: 18,)),
          Row(
              children: [
                Container(
        child: IconButton(onPressed: (){
                    if(mn!=15){
                      setState(() {
                        mn=mn-15;
                        pay=pay-100;
                        print(mn.toString()+' นาที\n'+pay.toString()+' บาท');
                      }
                      );
                    }
                  },
                  icon:Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(
                        color: Colors.grey
                      )
                    ),
                    child: Text('-',style: TextStyle(color: Colors.blue,fontSize: 25,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  ), 
                  ),
      ),
                Text(mn.toString(),style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold)),
                Text(' นาที',style: TextStyle(fontSize: 18,color: Colors.grey)),
                Container(
      child:  IconButton(onPressed: (){
                    setState(() {
                      mn=mn+15;
                      pay=pay+100;
                      print(mn.toString()+' นาที\n'+pay.toString()+' บาท');
                    });
                  }, 
                  icon:Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(
                        color: Colors.grey
                      )
                    ),
                    child: Text('+',style: TextStyle(color: Colors.blue,fontSize: 25,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  ), 
                  ),
    ),
              ],
            ),
            ],
          ),
        ),
        Container(
          height: 1,
          color: Colors.grey.withOpacity(.3),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(0, 15, 0, 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          Text('ค่าใช้จ่ายในการปรึกษา',style: TextStyle(fontSize: 18,)),
          Container(
            margin: const EdgeInsets.only(right: 30),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(pay.toString(),style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold)),
                  Text(' บาท',style: TextStyle(fontSize: 18,color: Colors.grey)),
                ],
              ),
          ),
            ],
          ),
        ),
        Container(
          height: 1,
          color: Colors.grey.withOpacity(.3),
        ),
      ],
    );
  }
}

class nextBtn extends StatefulWidget {
  const nextBtn({super.key});

  @override
  State<nextBtn> createState() => _nextBtnState();
}

class _nextBtnState extends State<nextBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(80, 50, 80, 50),
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Chat(mn: mn)));
        },
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        ),
        child: Text('ถัดไป',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      ),
    );
  }
}

class payment extends StatelessWidget {
  const payment({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        
      },
      child: Container(
        height: 50,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(.5),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.grey.withOpacity(.3)
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.payment,color: Colors.blue,),
                Text(' วิธีการชำระเงิน'),
              ],
            ),
            Row(
              children: [
                Text('เลือก ',style: TextStyle(fontSize: 15),),
                Icon(Icons.arrow_forward_ios,size: 15,color: Colors.grey,),
              ],
            )
          ],
        ),
      ),
    );
  }
}




