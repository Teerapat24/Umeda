import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Container(
              color: Colors.blue,
              padding: const EdgeInsets.all(30),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  border: Border.all(
                    color: Colors.white
                  )
                ),
                child: Image(image: AssetImage('lib/images/med1.png')),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,0),
                    color: Colors.grey.withOpacity(.5),
                    blurRadius: 5
                  )
                ]
              ),
              child: TextField(
                decoration: InputDecoration(
                        hintText: ' เบอร์โทรศัพท์',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40)),
                      ),
      
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,0),
                    color: Colors.grey.withOpacity(.5),
                    blurRadius: 5
                  )
                ]
              ),
              child: TextField(
                decoration: InputDecoration(
                        hintText: ' รหัสผ่าน',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            ),
                      ),
      
              ),
            ),
            Container(
              height: 50,
              margin: const EdgeInsets.all(20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                      ),
                onPressed: (){

              }, child: Text('เข้าสู่ระบบ',style: TextStyle(fontSize: 20))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: (){

                  }, 
                  child: Text('สมัครเข้าใช้งาน  ',style: TextStyle(fontSize: 17,color: Colors.grey)),
                  ),
                Container(
                  width: 1,
                  height: 20,
                  color: Colors.grey,
                ),
                TextButton(
                  onPressed: (){

                  }, 
                  child: Text('  ลืมรหัสผ่าน       ',style: TextStyle(fontSize: 17,color: Colors.grey)),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}