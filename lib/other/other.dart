import 'package:flutter/material.dart';
import 'package:umeda/other/suggestion.dart';
import 'package:umeda/symptom/symptom.dart';

class other extends StatefulWidget {
  const other({super.key});

  @override
  State<other> createState() => _otherState();
}

class _otherState extends State<other> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(.1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              card1(),
              card2(),
              btn(txt: 'คู่มือการใช้งาน', ontap: symptonScreen()),
              btn(txt: 'ข้อเสนอแนะ', ontap: suggestion()),  //ontap: ใส่classของpageที่ต้องการลิ้งค์
              btn(txt: 'ข้อตกลงและเงื่อนไขการใช้งาน', ontap: suggestion()),
            ],
          ),
          Column(
            children: [
              btnLogout(),
              footer(),
            ],
          ),
        ],
      ),
    );
  }
}

class icon extends StatelessWidget {
  icon({required this.img, required this.txt, required this.ontap});

  final img;
  final txt;
  final ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ontap));
      },
      child: Column(
        children: [
          Image(
            image: AssetImage(img),
            width: 30,
          ),
          Text(
            txt,
            style: const TextStyle(fontSize: 14),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class card1 extends StatelessWidget {
  const card1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'คำสั่งซื้อของฉัน',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                icon(
                  img: 'lib/images/shop3.png',
                  txt: 'ตะกร้าสินค้า',
                  ontap: suggestion(),
                ),
                icon(
                  img: 'lib/images/wallet.png',
                  txt: 'ที่ต้องชำระ',
                  ontap: suggestion(),
                ),
                icon(
                  img: 'lib/images/truck-moving.png',
                  txt: 'ที่ต้องจัดส่ง',
                  ontap: const suggestion(),
                ),
                icon(
                  img: 'lib/images/box.png',
                  txt: 'ที่ต้องได้รับ',
                  ontap: suggestion(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class card2 extends StatelessWidget {
  const card2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'บริการทางการแพทย์',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                icon(
                  img: 'lib/images/notebook.png',
                  txt: 'การปรึกษา\nย้อนหลัง',
                  ontap: suggestion(),
                ),
                icon(
                  img: 'lib/images/document.png',
                  txt: 'ประวัติ\nการรักษา',
                  ontap: suggestion(),
                ),
                icon(
                  img: 'lib/images/heart.png',
                  txt: 'สุขภาพ\nส่วนตัว',
                  ontap: suggestion(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class btn extends StatelessWidget {
  btn({required this.txt, required this.ontap});

  final txt;
  final ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ontap));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              txt,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.blue,
              size: 20,
            )
          ],
        ),
      ),
    );
  }
}

class btnLogout extends StatelessWidget {
  const btnLogout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50))),
          onPressed: () {},
          child: Text(
            'ออกจากระบบ',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          )),
    );
  }
}

class footer extends StatelessWidget {
  const footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(50)),
                      child: Icon(
                        Icons.call_rounded,
                        color: Colors.white,
                        size: 30,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '080-598-1093',
                        style: TextStyle(color: Colors.blue),
                      ),
                      Text('(Call Center 24 Hr.)',
                          style: TextStyle(color: Colors.blue)),
                    ],
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                height: 30,
                width: 1,
                color: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: InkWell(
                      onTap: () {

                      },
                      child: const Image(
                        image: AssetImage('lib/images/envelope.png'),
                        width: 30,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: InkWell(
                      onTap: () {

                      },
                      child: const Image(
                        image: AssetImage('lib/images/facebook.png'),
                        width: 30,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: InkWell(
                      onTap: () {

                      },
                      child: const Image(
                        image: AssetImage('lib/images/line.png'),
                        width: 30,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: InkWell(
                      onTap: () {

                      },
                      child: const Image(
                        image: AssetImage('lib/images/youtube.png'),
                        width: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
