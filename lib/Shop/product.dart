import 'package:flutter/material.dart';
import 'package:umeda/Shop/shop.dart';

class productPage extends StatefulWidget {
  final Product products;

  const productPage({
    Key? key,
    required this.products,
  }) : super(key: key);

  @override
  State<productPage> createState() => _productPageState(products: products);
}

class _productPageState extends State<productPage> {
  final Product products;

  _productPageState({
    required this.products,
  });
  int amountInt = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(products.name),
        backgroundColor: Color.fromARGB(255, 91, 174, 243),
      ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.white,
            width: double.infinity,
            height: 300,
            child: Image.asset(
              products.image,
              // fit: BoxFit.cover,
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  products.name,
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                Text(
                  'ขนาด : ' + products.size,
                  style: TextStyle(
                      color: Colors.black.withOpacity(.7), fontSize: 20),
                ),
                Text('ราคา ' + products.price + ' บาท',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
                Text('รายละเอียดสินค้า',
                    style: TextStyle(color: Colors.blue, fontSize: 20)),
                Text('ส่วนประกอบ',
                    style: TextStyle(color: Colors.blue, fontSize: 18)),
                Text(products.component, style: TextStyle(fontSize: 17)),
                Text('ใช้สำหรับ',
                    style: TextStyle(color: Colors.blue, fontSize: 18)),
                Text(products.used, style: TextStyle(fontSize: 17)),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "จำนวนสินค้า",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              IconButton(
                onPressed: () {
                  if (amountInt != 1) {
                    setState(() {
                      amountInt--;
                    });
                  }
                },
                icon: Icon(
                  Icons.remove_circle_outline,
                  color: Colors.blue,
                  size: 30,
                ),
              ),
              Text(
                amountInt.toString(),
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    amountInt++;
                  });
                },
                icon: Icon(
                  Icons.add_circle_outline,
                  color: Colors.blue,
                  size: 30,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 45,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    primary: Colors.orange,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.edit_calendar_outlined,
                        size: 25,
                      ),
                      Text(
                        ' เช็คสินค้า',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.calendar_month,
                            size: 30,
                          ),
                          Text(
                            'มองไม่เห็น',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 45,
                margin: EdgeInsets.fromLTRB(70, 0, 70, 0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.add_shopping_cart,
                        size: 30,
                      ),
                      Text(
                        'เพิ่มลงตระกร้า',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    ]))));
  }
}
