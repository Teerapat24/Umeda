import 'package:flutter/material.dart';
import 'package:umeda/Shop/product.dart';

class shop extends StatefulWidget {
  const shop({super.key});

  @override
  State<shop> createState() => _shopState();
}

class _shopState extends State<shop> {
  @override
  Widget build(BuildContext context) => Scaffold(
          body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              searchBar(),
              SizedBox(
                height: 20,
              ),
              menu(),
              SizedBox(
                height: 20,
              ),
              /////////////////////////สินค้าแนะนำ
              rcmProduct(),
              SizedBox(
                height: 20,
              ),
              ////////////สินค้าทั้งหมด
              allProduct(),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ));
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
      height: 48,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 0),
              color: Colors.black.withOpacity(.3),
              blurRadius: 3,
            )
          ]),
      margin: EdgeInsets.all(10),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'ค้นหาสินค้า...',
            labelStyle: TextStyle(fontSize: 15),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.blue,
            ),
            suffixIcon: Icon(Icons.qr_code_2_outlined),
            border: InputBorder.none),
      ),
    );
  }
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            child: Column(
              children: [
                Container(
                  width: 70,
                  child: Image(
                    image: AssetImage('lib/images/all.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  'สินค้า\nทั้งหมด',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            child: Column(
              children: [
                Container(
                  width: 70,
                  child: Image(
                    image: AssetImage('lib/images/herb.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  'ยาและ\nสมุนไพร',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            child: Column(
              children: [
                Container(
                  width: 70,
                  child: Image(
                    image: AssetImage('lib/images/butty.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  'ครีม\nเวชสำอาง',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            child: Column(
              children: [
                Container(
                  width: 70,
                  child: Image(
                    image: AssetImage('lib/images/heltty.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  'อุปกรณ์\nดูแลสุขภาพ',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

////////////////////////////////////////////////สินค้าแนะนำ////////////////////////////////////////////////////////////

class rcmProduct extends StatefulWidget {
  const rcmProduct({super.key});

  @override
  State<rcmProduct> createState() => _rcmProductState();
}

class _rcmProductState extends State<rcmProduct> {
  //////เพิ่มหรือลบข้อมูลผลิตภัณฑ์ในลิสต์ข้างล่างได้เลย
  List<Product> Products = [
    const Product(
        image: 'lib/images/med01.png',
        name: 'เม็ดอมผสมกิกเก้',
        price: '40',
        size: '1 กล่อง มี 20 เม็ด',
        component:
            'คัดสรรสมุนไพร 4 ชนิด มารวมกัน\n -รากกิกเก้\n -รากชะเอม\n -ใบชา\n -ใบสะระแหน่ญี่ปุ่น',
        used: 'ใช้ทาน เหมาะสำหรับคนที่เจ็บคอ ไอ มีเสมหะ'),
    const Product(
        image: 'lib/images/med02.png',
        name: 'ยาน้ำแก้ไอมะขามป้อม',
        price: '38',
        size: '60 มิลลิลิตร',
        component:
            'ประกอบด้วย ลูกมะขามป้อมแห้ง 6 กรัม เป็นตัวยาสำคัญ และ ตัวยาอื่นๆ',
        used: 'บรรเทาอาการไอ ขับเสมหะ ช่วยทำให้ชุ่มคอ'),
    const Product(
        image: 'lib/images/med03.png',
        name: 'ยาแคปซูลฟ้าทะลายโจร',
        price: '150',
        size: '1 กล่องบรรจุ 10แผง แผงละ 10เม็ด',
        component: '1 แคปซูล ประกอบด้วย ใบฟ้าทะลายโจรก่อนมีผล 500 มิลลิกรัม',
        used: 'แก้ร้อนใน บรรเทาอาการเจ็บคอ'),
    const Product(
        image: 'lib/images/med04.png',
        name: 'แคปซูลมะขามแขก',
        price: '110',
        size: '1 กล่อง มี 100 แคปซูล',
        component: '1 แคปซูล ประกอบด้วย ใบมะขามแขก 400 มก.',
        used:
            'บรรเทาอาการท้องผูก ช่วยให้ระบาย\nรับประทานครั้งละ 2-3 แคปซูล ก่อนนอน'),
    const Product(
        image: 'lib/images/med05.png',
        name: 'ยาแคปซูลตรีผลา',
        price: '100',
        size: '1 กล่องบรรจุ 10แผง แผงละ 10เม็ด',
        component:
            '"1 แคปซูล ประกอบด้วย\nสมอพิเภก 100 กรัม\nสมอไทย 100 กรัม\nมะขามป้อม 100 กรัม',
        used: 'สรรพคุณ ช่วยปรับธาตุ เป็นยาระบายอ่อนๆ'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    color: Colors.blue,
                    width: 5,
                    height: 50,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'สินค้าแนะนำ',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Recommended',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 35,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(50)),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    primary: Colors.white.withOpacity(.9),
                  ),
                  onPressed: () {},
                  child: Text(
                    'ดูสินค้าทั้งหมด >',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
        GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisExtent: 280
              // mainAxisSpacing: 1,
              // crossAxisSpacing: 1,
              ),
          itemCount: Products.length,
          itemBuilder: (context, index) {
            final Product = Products[index];
            return InkWell(
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => productPage(products: Product,)));
              },
              child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  margin: EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        height: 140,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage(Product.image),
                              ),
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 0),
                                    color: Colors.black.withOpacity(.3),
                                    blurRadius: 1)
                              ]),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Product.name,
                              style: TextStyle(
                                  color: Colors.black.withOpacity(.5),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              'ขนาด : ' + Product.size,
                              style: TextStyle(
                                  color: Colors.black.withOpacity(.3),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              'ราคา ' + Product.price + ' บาท',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.shopping_basket_outlined),
                                Text('  เพิ่มลงตะกร้า'),
                              ],
                            )),
                      ),
                    ],
                  )),
            );
          },
        ),
      ],
    );
  }
}

///////////////////////////////////////////////////////////วินต้าทั้งหมด//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
class allProduct extends StatefulWidget {
  const allProduct({super.key});

  @override
  State<allProduct> createState() => _allProductState();
}

class _allProductState extends State<allProduct> {
  //////เพิ่มหรือลบข้อมูลผลิตภัณฑ์ในลิสต์ข้างล่างได้เลย
  List<Product> Products = [
    const Product(
        image: 'lib/images/med01.png',
        name: 'เม็ดอมผสมกิกเก้',
        price: '40',
        size: '1 กล่อง มี 20 เม็ด',
        component:
            'คัดสรรสมุนไพร 4 ชนิด มารวมกัน\n -รากกิกเก้\n -รากชะเอม\n -ใบชา\n -ใบสะระแหน่ญี่ปุ่น',
        used: 'ใช้ทาน เหมาะสำหรับคนที่เจ็บคอ ไอ มีเสมหะ'),
    const Product(
        image: 'lib/images/med02.png',
        name: 'ยาน้ำแก้ไอมะขามป้อม',
        price: '38',
        size: '60 มิลลิลิตร',
        component:
            'ประกอบด้วย ลูกมะขามป้อมแห้ง 6 กรัม เป็นตัวยาสำคัญ และ ตัวยาอื่นๆ',
        used: 'บรรเทาอาการไอ ขับเสมหะ ช่วยทำให้ชุ่มคอ'),
    const Product(
        image: 'lib/images/med03.png',
        name: 'ยาแคปซูลฟ้าทะลายโจร',
        price: '150',
        size: '1 กล่องบรรจุ 10แผง แผงละ 10เม็ด',
        component: '1 แคปซูล ประกอบด้วย ใบฟ้าทะลายโจรก่อนมีผล 500 มิลลิกรัม',
        used: 'แก้ร้อนใน บรรเทาอาการเจ็บคอ'),
    const Product(
        image: 'lib/images/med04.png',
        name: 'แคปซูลมะขามแขก',
        price: '110',
        size: '1 กล่อง มี 100 แคปซูล',
        component: '1 แคปซูล ประกอบด้วย ใบมะขามแขก 400 มก.',
        used:
            'บรรเทาอาการท้องผูก ช่วยให้ระบาย\nรับประทานครั้งละ 2-3 แคปซูล ก่อนนอน'),
    const Product(
        image: 'lib/images/med05.png',
        name: 'ยาแคปซูลตรีผลา',
        price: '100',
        size: '1 กล่องบรรจุ 10แผง แผงละ 10เม็ด',
        component:
            '"1 แคปซูล ประกอบด้วย\nสมอพิเภก 100 กรัม\nสมอไทย 100 กรัม\nมะขามป้อม 100 กรัม',
        used: 'สรรพคุณ ช่วยปรับธาตุ เป็นยาระบายอ่อนๆ'),
    const Product(
        image: 'lib/images/butty01.png',
        name: 'ครีมแก้ผื่นคัน โปรเดอร์มายด์ Prodermild',
        price: '285',
        size: '1 หลอด มี 25 กรัม',
        component:
            '- เป็นสูตรอ่อนโยน ปราศจากแอลกอฮอล์ พาราเบน ซิลิโคน น้ำหอม และ สารแต่งสี สามารถใช้ได้แม้ในบริเวณที่ผิวบอบบาง\n- มีส่วนผสมของโอเมก้า3,6 และ เซรามายด์ ซึ่งเป็นไขมันที่จำเป็นในชั้นผิว ให้ความชุ่มชื้นตามธรรมชาติ และ ช่วยฟื้นฟูเกราะป้องกันผิว ให้ผิวกลับมาแข็งแรงตามธรรมชาติ\n- ช่วยลดการกลับมาเป็นซ้ำของกลุ่มที่เป็นผื่นแพ้ผิวหนัง เมื่อใช้อย่างต่อเนื่อง',
        used: 'ทาบริเวณที่ต้อง ทุกครั้งหลังอาบน้ำ  หรือ มีอาการผื่นคัน'),
    const Product(
        image: 'lib/images/butty02.png',
        name: 'Cherio เชรีโอ ครีมทาแก้ผื่นผ้าอ้อม บาดแผลบนผิวหนัง',
        price: '85',
        size: '1 หลอด มี 75 มิลลิกรัม',
        component: 'มีส่วนผสมจากซิงค์ออกไซด์	มีส่วนผสมจากซิงค์ออกไซด์',
        used:
            'สำหรับใช้ภายนอกเท่านั้น\nควรทำความสะอาด และ เช็ดผิวบริเวณที่ต้องการทาให้แห้งก่อนใช้ทุกครั้ง'),
    const Product(
        image: 'lib/images/heltty01.png',
        name: 'MENANGI GUMMY เพิ่มภูมิคุ้มกัน',
        price: '1,490',
        size: '1 กล่อง มี 60 เม็ด',
        component:
            'MENANGI GUMMY เลือกสารสกัด Elderberry จากประเทศยูเครน ซึ่งเป็นแหล่งเพาะปลูกธรรมชาติที่มีสภาพอากาศเหมาะสม มีความหลากหลายทางชีวภาพที่เหมาะสมกับพืชตระกูลเบอร์รี่ จนยูเครนเป็นประเทศที่ส่งออกเบอร์รี่มากเป็นอันดับต้นๆของโลก',
        used:
            'ผู้ที่ควรรับประทาน\n- ผู้ที่ต้องการดูแลสุขภาพ เพิ่มภูมิคุ้มกันให้กับร่างกาย\n- ผู้ที่เป็นภูมิ หวัด ไอ จาม บ่อยๆๆ\n- ผู้ที่ทำงานหนัก พักผ่อนน้อย มีความเครียด ไม่มีเวลาดูแลตัวเอง\n- ผู้ที่เหนื่อยง่าย ไม่สดชื่น ไม่กระปรี้กระเปร่า\n- ผู้ที่รับประทานวิตามินยาก (วิตามินกัมมี่ตัวนี้ ตอบโจทย์มากๆๆ)\n\nข้อควรระวัง\nผู้ที่มีนิ่วในถุงน้ำดี กับ ท่อน้ำดีอุดตัน ไม่แนะนำให้รับประทาน'),
    const Product(
        image: 'lib/images/heltty02.png',
        name: 'CURUCUMIN ล้างสารพิษ',
        price: '1,490',
        size: '1 กล่อง มี 60 เม็ด',
        component:
            'Curucumin Gummy 1 ชิ้น มีผงขมิ้นชัน 800 mg และมีสารสกัดจากพริกไทยดำ',
        used:
            'ผู้ที่ควรรับประทาน\n- ผู้ที่ต้องการดูแลสุขภาพ ล้างพิษในตับ\n- ผู้ที่มีพฤติกรรมความเสี่ยง เช่น สูบบุหรี่ ดื่มสุรา\n- ผู้ที่ชอบทางอาหารประเภทปิ้ง ย่าง บ่อยๆ\n- ผู้ที่ทำงานหนัก พักผ่อนน้อย มีความเครียด ไม่มีเวลาดูแลตัวเอง\n- ผู้ที่อ่อนเพลีย เหนื่อยง่าย นอนไม่หลับ คล้ายคนไม่มีแรง\n- ผู้ที่รับประทานวิตามินยาก'),
    const Product(
        image: 'lib/images/heltty03.png',
        name: 'หน้ากากอนามัย Klean Plus Mask ป้องกันฝุ่น',
        price: '100',
        size: '1 กล่อง 50 ชิ้น',
        component:
            '"- หน้ากากอนามัยทางการแพทย์\n- ช่วยป้องกันฝุ่นละออง \n- เชื้อโรคที่ปะปนมากับอากาศ\n- หน้ากากอนามัย 3 ชั้น\n- ยางคล้องหู เป็นแบบยางน่ิ่มไม่เจ็บหรือบาดหู',
        used: '- ป้องกันฝุ่นละออง \n- ป้องกันเชื้อโรคที่ปะปนมากับอากาศ'),
    const Product(
        image: 'lib/images/heltty04.png',
        name: 'ผลิตภัณฑ์เสริมอาหารพิโนติน',
        price: '100',
        size: '1 กล่อง มี 50 แคปซูล',
        component:
            'ส่วนประกอบใน1 แคปซูล\nสารสกัดกระชายขาว 150 mg\nสารสกัดขิง 100 mg\nสารสกัดมะขามป้อม 100 mg\nซิงค์ อะมิโน แอซิด คีเลต 20% 50mg',
        used:
            'ช่วยบำรุงร่างกาย ไม่มีผลในการป้องกันหรือรักษาโรค ควรรับประทานอาหารให้ครบ 5 หมู่'),
    const Product(
        image: 'lib/images/heltty05.png',
        name: 'CIBIC-25 ผลิตภัณฑ์เสริมอาหารที่มีวิตามินซี',
        price: '98',
        size: '1 กล่อง มี 1000 เม็ด',
        component: 'วิตามินซี 25 มิลลิกรัม',
        used: 'เหมาะสำหรับผู้ที่ขาดวิตามินซี'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    color: Colors.blue,
                    width: 5,
                    height: 50,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'สินค้าทั้งหมด',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Product',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 35,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(50)),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    primary: Colors.white.withOpacity(.9),
                  ),
                  onPressed: () {},
                  child: Text(
                    'ดูสินค้าทั้งหมด >',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
        GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisExtent: 280
              // mainAxisSpacing: 1,
              // crossAxisSpacing: 1,
              ),
          itemCount: Products.length,
          itemBuilder: (context, index) {
            final Product = Products[index];
            return InkWell(
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => productPage(products: Product,)));
              },
              child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  margin: EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        height: 140,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage(Product.image),
                              ),
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 0),
                                    color: Colors.black.withOpacity(.3),
                                    blurRadius: 1)
                              ]),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Product.name,
                              style: TextStyle(
                                  color: Colors.black.withOpacity(.5),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              'ขนาด : ' + Product.size,
                              style: TextStyle(
                                  color: Colors.black.withOpacity(.3),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              'ราคา ' + Product.price + ' บาท',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.shopping_basket_outlined),
                                Text('  เพิ่มลงตะกร้า'),
                              ],
                            )),
                      ),
                    ],
                  )),
            );
          },
        ),
      ],
    );
  }
}

class Product {
  final String image;
  final String name;
  final String price;
  final String size;
  final String component;
  final String used;
  const Product({
    required this.image,
    required this.name,
    required this.price,
    required this.size,
    required this.component,
    required this.used,
  });
}
