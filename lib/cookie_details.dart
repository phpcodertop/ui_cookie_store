import 'package:flutter/material.dart';
import 'package:ui_cookie_store/bottom_bar.dart';

class CookieDetails extends StatefulWidget {
  final String cookieName;
  final String price;
  final String imgPath;

  const CookieDetails({
    super.key,
    required this.cookieName,
    required this.price,
    required this.imgPath,
  });

  @override
  State<CookieDetails> createState() => _CookieDetailsState();
}

class _CookieDetailsState extends State<CookieDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFF17532),
        onPressed: () {},
        child: const Icon(Icons.fastfood),
      ),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: const Text(
          'Cookie Store',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Varela',
            fontSize: 20.0,
          ),
        ),
        actions: const [
          Icon(
            Icons.notifications_outlined,
            color: Colors.black,
          ),
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        // padding: const EdgeInsets.only(left: 20.0),
        children: [
          Column(
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Text(
                widget.cookieName,
                style: const TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 42.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFF17532),
                ),
              ),
              Hero(
                tag: widget.imgPath,
                child: Image.asset(
                  widget.imgPath,
                  height: 200.0,
                  width: double.infinity,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                widget.price,
                style: const TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFF17532),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                widget.cookieName,
                style: const TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF575E67),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 50.0,
                child: const Text(
                  'Cold, creamy ice cream sandwiched between delicious deluxe cookies. Pick your favorite deluxe cookies and ice cream flavor.',
                  style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 16.0,
                      color: Color(0xFFB4B8B9),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                padding: const EdgeInsets.all(15.0),
                width: MediaQuery.of(context).size.width - 50.0,
                decoration: BoxDecoration(
                  color: const Color(0xFFF17532),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: const Center(
                  child: Text('Add to cart', style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Varela',
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
