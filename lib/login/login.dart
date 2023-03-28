import 'package:flutter/material.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  final TextEditingController phone = TextEditingController();
  final TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[
              Color.fromARGB(255, 155, 197, 249),
              Color.fromARGB(255, 114, 128, 238),
              Color.fromARGB(255, 118, 177, 255),
            ],
            tileMode: TileMode.decal,
          ),
        ),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(30),
              child: Container(
                padding: EdgeInsets.all(40),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.2),
                  // border: Border.all(
                  //   color: Colors.white
                  // ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image(image: AssetImage('lib/images/med1.png')),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 00),
              padding: EdgeInsets.only(top: 30, bottom: 30),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.8),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text(
                    'กรุณากรอกข้อมูลเพื่อเข้าสู่ระบบ',
                    style: TextStyle(
                        color: Colors.black.withOpacity(.7), fontSize: 15),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 0),
                              color: Colors.grey.withOpacity(.5),
                              blurRadius: 5)
                        ]),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: ' เบอร์โทรศัพท์',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40)),
                      ),
                      controller: phone,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 0),
                              color: Colors.grey.withOpacity(.5),
                              blurRadius: 5)
                        ]),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: ' รหัสผ่าน',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                      controller: password,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    margin: const EdgeInsets.all(20),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        onPressed: () {},
                        child: Text('เข้าสู่ระบบ',
                            style: TextStyle(fontSize: 20))),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text('สมัครเข้าใช้งาน  ',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black.withOpacity(.5))),
                      ),
                      Container(
                        width: 1,
                        height: 20,
                        color: Colors.grey,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text('  ลืมรหัสผ่าน       ',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black.withOpacity(.5))),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
