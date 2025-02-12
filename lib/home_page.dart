import 'package:flutter/material.dart';
import 'package:krypto/discover.dart';
import 'package:krypto/flex1.dart';
import 'package:krypto/flex2.dart';
import 'package:krypto/token_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
              child: Column(children: [
                Row(
                  children: [
                    SizedBox(
                      height: 50,
                      width: 275,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            prefixIcon: const Icon(Icons.search),
                            prefixIconColor: Colors.white,
                            hintText: 'Search Token',
                            hintStyle: const TextStyle(color: Colors.white)),
                      ),
                    ),
                    const Spacer(),
                    const Column(
                      children: [
                        Icon(
                          Icons.toggle_off_sharp,
                          size: 70,
                          color: Colors.white,
                        ),
                        Text(
                          'Hide Balance',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TokenPage()));
                      },
                      child: Flex1(
                        color: const Color(0xFF3375BB).withOpacity(0.8),
                        container: Container(
                          height: 20,
                          width: 45,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.8),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Text(
                            '+2.5%',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                        text1: 'WALLET 1',
                        text2: '\$12,098.90',
                        text3: 'More',
                        text4: '>',
                      ),
                    ),
                    const Spacer(),
                    Flex1(
                      color: const Color(0xFF0E2338),
                      container: Container(
                        height: 20,
                        width: 47,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(5)),
                        child: const Text(
                          '+20.1%',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                      text1: 'WALLET 2',
                      text2: '\$2,956.08',
                      text3: 'Tap to view',
                      text4: '>',
                    ),
                    const Spacer(),
                    Container(
                      height: 200,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFF0E2338)),
                      child: const Padding(
                        padding: EdgeInsets.all(13),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '+',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'New Wallet',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Text(
                      'Your portfolio',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      '+',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Add assets',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
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
                          'All Networks',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'BEP20',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'ERC20',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'TRC20',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Flex2(
                  text1: 'Apeswap Finance',
                  text2: '1,987.5 BANANA',
                  text3: '\$1.98',
                  text4: '+3.4%',
                  text5: '\$3,865.86',
                  image: Image.asset('assets/banana.png'),
                  color: Colors.green,
                ),
                const SizedBox(
                  height: 5,
                ),
                Flex2(
                  text1: 'BNB',
                  text2: '0.5 BNB',
                  text3: '\$398',
                  text4: '+8.14%',
                  text5: '\$195.86',
                  image: Image.asset('assets/bnb.png'),
                  color: Colors.green,
                ),
                const SizedBox(
                  height: 10,
                ),
                Flex2(
                  text1: 'Jupiter',
                  text2: '7.5JUP',
                  text3: '\$4.98',
                  text4: '-43.4%',
                  text5: '\$38.86',
                  image: Image.asset('assets/jupiter.png'),
                  color: Colors.red,
                ),
                const SizedBox(
                  height: 10,
                ),
                Flex2(
                  text1: 'Ethereum',
                  text2: '1.5 ETH',
                  text3: '\$1.98',
                  text4: '+0.20%',
                  text5: '\$2,385.856',
                  image: Image.asset('assets/ethereum.png'),
                  color: Colors.green,
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
