import 'package:flutter/material.dart';


class suggestion extends StatefulWidget {
  const suggestion({super.key});

  @override
  State<suggestion> createState() => _suggestionState();
}

class _suggestionState extends State<suggestion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
          title: const Text('ข้อเสนอแนะ'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.notifications_none_outlined),
              // tooltip: 'Show Snackbar',
              onPressed: () {},
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(40),
                    child: Image.asset(
                      'lib/images/med4.png',
                      fit: BoxFit.cover,
                      width: 300,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'หัวข้อ',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40)),
                      ),
                      style: TextStyle(fontSize: 20),
                      // controller:,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      maxLines: 10,
                        decoration: InputDecoration(
                          hintText: 'รายละเอียด',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40)),
                        ),
                        // controller:,
                        style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                    width: 170,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange, // background
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                      ),
                      child: Text(
                        "ยกเลิก",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      onPressed: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => page()));
                      },
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                    width: 170,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue, // background
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                      ),
                      child: Text(
                        "ตกลง",
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => page()));
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }
}
