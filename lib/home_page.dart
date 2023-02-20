import 'package:flutter/material.dart';
import 'package:ui_cookie_store/bottom_bar.dart';

import 'cookie_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabsController;

  @override
  void initState() {
    super.initState();
    _tabsController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text(
          'Cookie Store',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Varela',
            fontSize: 20.0,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_outlined,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(left: 20.0),
        children: [
          const SizedBox(
            height: 15.0,
          ),
          const Text(
            'Categories',
            style: TextStyle(
              fontFamily: 'Varela',
              fontSize: 42.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 15.0),
          TabBar(
            controller: _tabsController,
            indicatorColor: Colors.transparent,
            labelColor: const Color(0xFFC88D67),
            isScrollable: true,
            labelPadding: const EdgeInsets.only(right: 45.0),
            unselectedLabelColor: const Color(0xFFCDCDCD),
            tabs: const [
              Tab(
                child: Text(
                  'Cookies',
                  style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 21.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Cookies Cake',
                  style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 21.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Ice Cream',
                  style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 21.0,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 50.0,
            width: double.infinity,
            child: TabBarView(
              controller: _tabsController,
              children: const [
                CookiePage(),
                CookiePage(),
                CookiePage(),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFFF17532),
        child:  const Icon(Icons.fastfood,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BottomBar(),
    );
  }
}
