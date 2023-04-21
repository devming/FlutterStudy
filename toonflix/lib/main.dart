import 'package:flutter/material.dart';
import 'package:toonflix/widgets/currency_card.dart';
import 'package:toonflix/widgets/button.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: const Color(0xFF181818),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              'Hey, Selena',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Text(
                              'Welcome back',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.8),
                                  fontSize: 18),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 120,
                    ),
                    Text(
                      'Total Balance',
                      style: TextStyle(
                          fontSize: 22, color: Colors.white.withOpacity(0.8)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      '\$5 194 482',
                      style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Button(
                            bgColor: Colors.amber,
                            text: 'Transfer',
                            textColor: Colors.black),
                        Button(
                            text: 'Request',
                            bgColor: Color(0xFF1F2123),
                            textColor: Colors.white),
                      ],
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          'Wallets',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'View All',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: const [
                        CurrencyCard(
                          name: 'Euro',
                          code: 'EUR',
                          amount: '6 543',
                          icon: Icons.euro_rounded,
                          isInverted: false,
                          index: 0,
                        ),
                        CurrencyCard(
                          name: 'Bitcoin',
                          code: 'BTC',
                          amount: '9 324',
                          icon: Icons.currency_bitcoin,
                          isInverted: true,
                          index: 1,
                        ),
                        CurrencyCard(
                          name: 'Dollar',
                          code: 'USD',
                          amount: '234',
                          icon: Icons.attach_money_outlined,
                          isInverted: false,
                          index: 2,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )));
  }
}
