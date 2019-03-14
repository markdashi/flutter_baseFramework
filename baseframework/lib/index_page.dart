import 'package:flutter/material.dart';
import './pages/member_page.dart';
import './pages/weixin_page.dart';
import './pages/found_page.dart';
import './pages/contact_page.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {

  List<BottomNavigationBarItem> _items = [
      BottomNavigationBarItem(
        icon: Icon(Icons.chat_bubble),
        title: Text('微信')
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.group),
        title: Text('通讯录')
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.directions),
        title: Text('发现')
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person_outline),
        title: Text('我的')
      )
  ];
 List<Widget> _pages = [
   WeixinPage(),
   FoundPage(),
   MemberPage(),
   ContactPage()
 ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type:BottomNavigationBarType.fixed,
        items: _items,
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
             _currentIndex = index;
          });
        },
      ),
    );
  }
}