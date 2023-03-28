import 'package:flutter/material.dart';
import 'dart:async';

class countdown extends StatefulWidget {
  countdown({required this.mn});
  int mn;

  @override
  State<countdown> createState() => _countdownState(minutes: mn);
}

class _countdownState extends State<countdown> {
  _countdownState({required this.minutes});
  int seconds = 0;
  int minutes;
  int hours = 0;

  void _setTimer() {
    while (minutes >= 60) {
      minutes = minutes - 60;
      hours++;
    }
  }

  bool _isRunning = true;


  Timer? _timer;

  void _startTimer() {
    setState(() {
      _isRunning = false;
    });
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() {
        if (seconds > 0) {
          seconds--;
        } else {
          
          if (minutes > 0) {
            if(hours==0&&minutes==2&&seconds==0){
              _2minute();
            }
            minutes--;
            seconds = 59;
          } else {
            if (hours > 0) {
              hours--;
              minutes = 59;
              seconds = 59;
            } else {
              _isRunning = false;
              _timer?.cancel();
              _timeout();
            }
          }
        }
      });
    }
    );
  
  }
  void _2minute(){
  showDialog(
    context: context,
    barrierDismissible:  false, 
    builder: (BuildContext context){
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        backgroundColor: Colors.white,
        title: Center(child: Text('เหลือเวลา 2 นาที\nต้องการเพิ่มเวลาหรือไม่',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
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
                    minutes=minutes+15;
                    Navigator.pop(context);
                  });
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    width: 100,
                    padding: const EdgeInsets.all(12),
                    color: Colors.blue.withOpacity(.8),
                    child: Text('ตกลง',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
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
void _timeout(){
  showDialog(
    context: context,
    barrierDismissible:  false, 
    builder: (BuildContext context){
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        backgroundColor: Colors.white,
        title: Center(child: Text('เวลาหมดแล้ว\nต้องการเพิ่มเวลาหรือไม่',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    noExtraTime();
                  });
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
                    minutes=minutes+15;
                    _isRunning=true;
                    Navigator.pop(context);
                  });
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    width: 100,
                    padding: const EdgeInsets.all(12),
                    color: Colors.blue.withOpacity(.8),
                    child: Text('ตกลง',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
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
 void noExtraTime(){
    Navigator.pop(context);
 }

  @override
  Widget build(BuildContext context) {
    if(_isRunning){
    _setTimer();
    _startTimer();
    }
    if(hours==0&&minutes<=1){
      return Text(
          '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}',
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold,color: Colors.red),
      );
    }else{
      return Text(
          '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}',
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold),
      );
    }
  }

  @override
  void dispose() {
    if (_timer != null) {
      _timer!.cancel();
    }
    super.dispose();
  }
}
