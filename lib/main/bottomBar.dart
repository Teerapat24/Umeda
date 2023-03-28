import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';
import 'package:umeda/Shop/shop.dart';
import 'package:umeda/main/home.dart';
import 'package:umeda/other/other.dart';
import 'package:umeda/service/service_fee.dart';
//ลง "stylish_bottom_bar: ^1.0.0" ใน pubspec.yaml

class bottomBar extends StatefulWidget {
  const bottomBar({
    Key? key,
  }) : super(key: key);

  @override
  State<bottomBar> createState() => _bottomBarState();
}

class _bottomBarState extends State<bottomBar> {
  dynamic selected;
  PageController controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        bottomNavigationBar: StylishBottomBar(
          backgroundColor: Colors.blue,
          items: [
            BottomBarItem(
                icon: Container(
                  child: Column(
                    children: [
                      Container(
                        height: 35,
                        margin: const EdgeInsets.only(top: 10),
                        child: Icon(
                          Icons.home_outlined,
                          size: 35,
                          color: Colors.white.withOpacity(.7),
                        ),
                      ),
                      Text(
                        'หน้าหลัก',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(.7)),
                      ),
                    ],
                  ),
                ),
                selectedIcon: Container(
                  child: Column(
                    children: [
                      Container(
                        height: 35,
                        child: Icon(
                          Icons.home_rounded,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        'หน้าหลัก',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                title: const Text('')),
            BottomBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(right: 40),
                  child: Column(
                    children: [
                      Container(
                        height: 35,
                        margin: const EdgeInsets.only(top: 10),
                        child: Icon(
                          Icons.local_mall_outlined,
                          size: 35,
                          color: Colors.white.withOpacity(.7),
                        ),
                      ),
                      Text(
                        'ร้านค้า',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(.7)),
                      ),
                    ],
                  ),
                ),
                selectedIcon: Container(
                  margin: const EdgeInsets.only(right: 40),
                  child: Column(
                    children: [
                      Container(
                        height: 35,
                        child: Icon(
                          Icons.local_mall,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        'ร้านค้า',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                title: const Text('')),
            BottomBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(left: 40),
                  child: Column(
                    children: [
                      Container(
                        height: 35,
                        margin: const EdgeInsets.only(top: 10),
                        child: Icon(
                          Icons.location_on_outlined,
                          size: 35,
                          color: Colors.white.withOpacity(.7),
                        ),
                      ),
                      Text(
                        'สาขา',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(.7)),
                      ),
                    ],
                  ),
                ),
                selectedIcon: Container(
                  margin: const EdgeInsets.only(left: 40),
                  child: Column(
                    children: [
                      Container(
                        height: 35,
                        child: Icon(
                          Icons.location_on,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        'สาขา',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                title: const Text('')),
            BottomBarItem(
              icon: Container(
                child: Column(
                  children: [
                    Container(
                      height: 35,
                      margin: const EdgeInsets.only(top: 10),
                      child: Icon(
                        Icons.menu_rounded,
                        size: 35,
                        color: Colors.white.withOpacity(.7),
                      ),
                    ),
                    Text(
                      'อื่นๆ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(.7)),
                    ),
                  ],
                ),
              ),
              selectedIcon: Container(
                child: Column(
                  children: [
                    Container(
                      height: 35,
                      child: Icon(
                        Icons.menu_open_rounded,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      'อื่นๆ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
              ),
              title: const Text(''),
            ),
          ],
          hasNotch: true,
          fabLocation: StylishBarFabLocation.center,
          currentIndex: selected ?? 0,
          onTap: (index) {
            controller.jumpToPage(index);
            setState(() {
              selected = index;
            });
          },
          option: AnimatedBarOptions(
            backgroundColor: Colors.transparent,
            barAnimation: BarAnimation.transform3D,
            iconStyle: IconStyle.Default,
          ),
        ),

        //ไอคอนปรึกษาเภสัช////////////////////////////////////////////////
        floatingActionButton: Container(
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 0, 114, 207),
              // border: Border.all(),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(50),
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(50),
              )),
          height: 75,
          //  width: 87,
          child: Column(
            children: [
              Container(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Text('ปรึกษาเภสัช',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white))),
              FittedBox(
                child: FloatingActionButton(
                  // elevation: 0,
                  onPressed: () {
                    //ใส่หน้าปรึกษาเภสัช
                  Navigator.push(context, MaterialPageRoute(builder: (context) => service_fee(),));
                  },
                  backgroundColor: Color.fromARGB(255, 0, 114, 207),
                  child: Image(
                    image: AssetImage('lib/images/doc1.png'),
                    fit: BoxFit.cover,
                    width: 40,
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
        body: SafeArea(
          child: PageView(
            controller: controller,
            children: const [
              Home(),
              shop(),
              Center(child: Text('สาขา')),
              other(),
            ],
          ),
        ),
      ),
    );
  }
}
