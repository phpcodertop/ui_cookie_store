import 'package:flutter/material.dart';
import 'package:ui_cookie_store/cookie_details.dart';

class CookiePage extends StatelessWidget {
  const CookiePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 15.0,
          ),
          Container(
            padding: const EdgeInsets.only(right: 15.0),
            width: MediaQuery.of(context).size.width - 30.0,
            height: MediaQuery.of(context).size.height - 50.0,
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 15.0,
              childAspectRatio: 0.9,
              primary: false,
              children: [
                _buildCard(
                  'Cookie mint',
                  '\$3.99',
                  'assets/cookiemint.jpg',
                  false,
                  false,
                  context,
                ),
                _buildCard(
                  'Cookie cream',
                  '\$5.99',
                  'assets/cookiecream.jpg',
                  true,
                  false,
                  context,
                ),
                _buildCard(
                  'Cookie classic',
                  '\$1.99',
                  'assets/cookieclassic.jpg',
                  false,
                  true,
                  context,
                ),
                _buildCard(
                  'Cookie choco',
                  '\$2.99',
                  'assets/cookiechoco.jpg',
                  false,
                  false,
                  context,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  _buildCard(String cookieName, String price, String imgPath, bool added,
      bool isFavorite, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (ctx) => CookieDetails(
              cookieName: cookieName,
              price: price,
              imgPath: imgPath,
            ),
          ));
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3.0,
                blurRadius: 5.0,
              ),
            ],
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    isFavorite
                        ? const Icon(
                            Icons.favorite,
                            color: Color(0xFFEF7532),
                          )
                        : const Icon(
                            Icons.favorite_outline,
                            color: Color(0xFFEF7532),
                          ),
                  ],
                ),
              ),
              Hero(
                tag: imgPath,
                child: Container(
                  height: 75.0,
                  width: 75.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imgPath),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 7.0,
              ),
              Text(
                price,
                style: const TextStyle(
                  color: Color(0xFFCC8053),
                  fontFamily: 'Varela',
                  fontSize: 14.0,
                ),
              ),
              Text(
                cookieName,
                style: const TextStyle(
                  color: Color(0xFF575E67),
                  fontFamily: 'Varela',
                  fontSize: 14.0,
                ),
              ),
              const SizedBox(
                height: 7.0,
              ),
              Container(
                padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                height: 1.0,
                color: const Color(0xFFEBEBEB),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (!added) ...[
                      const Icon(
                        Icons.shopping_basket,
                        color: Color(0xFFD17E50),
                        size: 12.0,
                      ),
                      const Text(
                        'Add to cart',
                        style: TextStyle(
                          fontFamily: 'Varela',
                          color: Color(0xFFD17E50),
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                    if (added) ...[
                      const Icon(
                        Icons.remove_circle_outline,
                        color: Color(0xFFD17E50),
                        size: 12.0,
                      ),
                      const Text(
                        '3',
                        style: TextStyle(
                          fontFamily: 'Varela',
                          color: Color(0xFFD17E50),
                          fontSize: 12.0,
                        ),
                      ),
                      const Icon(
                        Icons.add_circle_outline,
                        color: Color(0xFFD17E50),
                        size: 12.0,
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
