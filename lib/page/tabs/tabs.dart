import 'package:flutter/material.dart';
import 'package:njarafront/constant/color.dart';
import 'package:njarafront/controller/navigation/simpleNavigation.dart';
import 'package:njarafront/page/search/search.dart';
import 'package:njarafront/page/tabs/contact/contactPage.dart';
import 'package:njarafront/page/tabs/engine/enginePage.dart';
import 'package:njarafront/page/tabs/home/homePage.dart';
import 'package:njarafront/page/tabs/work/workPage.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({Key? key}) : super(key: key);

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  int index = 0;
  bool isClicked = false;
  void _iconHandleClicked(int id) {
    setState(() {
      index = id;
    });
  }

  List _screen = [
    const HomePage(),
    const EnginePage(),
    const WorkPage(),
    const ContactPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                onPressed: () {
                  simpleNavigation(context, const Searchpage());
                },
                icon: const Icon(Icons.search)),
          )
        ],
      ),
      drawer: const Drawer(),
      body: _screen[index],
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  Widget _bottomNavigationBar() {
    return Container(
      padding: const EdgeInsets.all(6),
      width: double.infinity,
      decoration: const BoxDecoration(color: bgColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _iconBtn(Icons.home, () {
            _iconHandleClicked(0);
          }),
          _iconBtn(Icons.calendar_today, () {
            _iconHandleClicked(1);
          }),
          _iconBtn(Icons.work_history, () {
            _iconHandleClicked(2);
          }),
          _iconBtn(Icons.person_3, () {
            _iconHandleClicked(3);
          }),
        ],
      ),
    );
  }

  Widget _iconBtn(IconData icon, func) {
    return IconButton(onPressed: func, icon: Icon(icon));
  }
}
