import 'package:flutter/material.dart';
import 'package:krypto/discover.dart';
import 'package:krypto/token_box.dart';

class TokenPage extends StatelessWidget {
  const TokenPage({super.key});

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
                          'Token Details',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
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
                    CircleAvatar(
                      radius: 23,
                      child: Image.asset('assets/banana.png'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Apeswap Finance BANANA',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '\$1.98',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '+3.4%',
                          style: TextStyle(color: Colors.green, fontSize: 15),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      '1,987.5 BANANA',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 19),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    const Text(
                      'Portfolio Worth: \$3,865.56',
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        const Column(
                          children: [
                            Text(
                              'BEP20',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              'Decimals: 0',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Column(
                          children: [
                            Text(
                              '01fghd66rye5e467y8o6',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              '786t20aytfyhjhjvh',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 45,
                          width: 62,
                          decoration: BoxDecoration(
                              color: const Color(0xFF0E2338).withOpacity(0.9),
                              borderRadius: BorderRadius.circular(8)),
                          child: const Center(
                            child: Text(
                              'COPY',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TokenBox(
                          tokenicon: Icon(
                            Icons.add_circle_outlined,
                            size: 20,
                            color: Colors.white,
                          ),
                          tokentext: Text(
                            'Buy',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                        TokenBox(
                          tokenicon: Icon(
                            Icons.send,
                            size: 20,
                            color: Colors.white,
                          ),
                          tokentext: Text(
                            'Send',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                        TokenBox(
                          tokenicon: Icon(
                            Icons.transit_enterexit,
                            size: 20,
                            color: Colors.white,
                          ),
                          tokentext: Text(
                            'Receive',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                        TokenBox(
                          tokenicon: Icon(
                            Icons.swap_horizontal_circle_outlined,
                            size: 20,
                            color: Colors.white,
                          ),
                          tokentext: Text(
                            'Swap',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 40,
                      width: 370,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFF0E2338)),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Transaction History',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Performance',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Image.asset(
                      'assets/records.png',
                      scale: 2,
                    ),
                    const Text(
                      'You Have No Transaction History Yet.',
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
