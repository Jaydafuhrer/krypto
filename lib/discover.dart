import 'package:flutter/material.dart';
import 'package:krypto/flex3.dart';

class Discover extends StatelessWidget {
  const Discover({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xFF000000),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: const Color(0xFF0E2338),
            items: [
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 38,
                ),
                label: 'Home',
              ),
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.currency_exchange,
                  color: Colors.grey,
                  size: 38,
                ),
                label: 'Trade',
              ),
              BottomNavigationBarItem(
                icon: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Discover()));
                  },
                  child: const Icon(
                    Icons.apps_sharp,
                    color: Colors.grey,
                    size: 38,
                  ),
                ),
                label: 'Earn',
              ),
              const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    color: Colors.grey,
                    size: 38,
                  ),
                  label: 'Profile')
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        'Discover',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white),
                      ),
                      const Icon(
                        Icons.search,
                        size: 37,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 170,
                    width: 370,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Image.asset(
                      'assets/pi.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 40,
                    width: 370,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFF0E2338)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Staking',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Defi Tokens',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Lending/Borrow',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Flex3(
                      image: Image.asset('assets/banana.png'),
                      text1: 'Apeswap Finance',
                      text2: '\$1.98'),
                  SizedBox(
                    height: 10,
                  ),
                  Flex3(
                      image: Image.asset('assets/bnb.png'),
                      text1: 'BNB',
                      text2: '\$398'),
                  SizedBox(
                    height: 10,
                  ),
                  Flex3(
                      image: Image.asset('assets/jupiter.png'),
                      text1: 'Jupiter',
                      text2: '\$7.5'),
                  SizedBox(
                    height: 10,
                  ),
                  Flex3(
                      image: Image.asset('assets/ethereum.png'),
                      text1: 'Ethereum',
                      text2: '\$1,098'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
