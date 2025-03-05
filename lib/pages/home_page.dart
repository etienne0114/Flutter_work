import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text('Home'),
        title: Row(
          children: [
            Text('HOME'),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        IconButton(
                          // icon: const Icon(Icons.home, color: Colors.teal),
                          icon: Column(
                            children: const [
                              Icon(Icons.home, color: Colors.teal),
                              Text(
                                'Home',
                                style: TextStyle(color: Colors.teal),
                              ),
                            ],
                          ),
                          onPressed:
                              () => Navigator.pushNamed(context, '/home'),
                          tooltip: 'Home',
                        ),
                        // icon button about
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        IconButton(
                          // icon: const Icon(Icons.home, color: Colors.teal),
                          icon: Column(
                            children: const [
                              Icon(Icons.info, color: Colors.teal),
                              Text(
                                'About',
                                style: TextStyle(color: Colors.teal),
                              ),
                            ],
                          ),
                          onPressed:
                              () => Navigator.pushNamed(context, '/about'),
                          tooltip: 'About',
                        ),
                        // icon button about
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        IconButton(
                          // icon: const Icon(Icons.home, color: Colors.teal),
                          icon: Column(
                            children: const [
                              Icon(Icons.help, color: Colors.teal),
                              Text(
                                'Help',
                                style: TextStyle(color: Colors.teal),
                              ),
                            ],
                          ),
                          onPressed:
                              () => Navigator.pushNamed(context, '/help'),
                          tooltip: 'Home',
                        ),
                        // icon button about
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        IconButton(
                          // icon: const Icon(Icons.home, color: Colors.teal),
                          icon: Column(
                            children: const [
                              Icon(Icons.data_usage, color: Colors.teal),
                              Text(
                                'Data',
                                style: TextStyle(color: Colors.teal),
                              ),
                            ],
                          ),
                          onPressed:
                              () => Navigator.pushNamed(context, '/data'),
                          tooltip: 'Home',
                        ),
                        // icon button about
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        // actions: [
        // IconButton(
        //   // icon: const Icon(Icons.home, color: Colors.teal),
        //   icon: Column(
        //     children: const [
        //       Icon(Icons.home, color: Colors.teal),
        //       Text('Home', style: TextStyle(color: Colors.teal)),
        //     ],
        //   ),
        //   onPressed: () => Navigator.pushNamed(context, '/home'),
        //   tooltip: 'Home',
        // ),
        //   IconButton(
        //     icon: const Icon(Icons.info, color: Colors.teal),
        //     onPressed: () => Navigator.pushNamed(context, '/about'),
        //     tooltip: 'About',
        //   ),
        //   IconButton(
        //     icon: const Icon(Icons.data_usage, color: Colors.teal),
        //     onPressed: () => Navigator.pushNamed(context, '/data'),
        //     tooltip: 'Data',
        //   ),
        //   IconButton(
        //     icon: const Icon(Icons.help, color: Colors.teal),
        //     onPressed: () => Navigator.pushNamed(context, '/help'),
        //     tooltip: 'Help',
        //   ),
        // ],
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Lottie.asset(
              'assets/animations/LottieLog1.json',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  DecoratedBox(
                    decoration: BoxDecoration(
                      // ignore: deprecated_member_use
                      color: Colors.teal.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      child: const Text(
                        'Welcome to our app! We are excited to have you here. Explore the features and enjoy the seamless experience.',
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    // ignore: deprecated_member_use
                    color: Colors.white.withOpacity(0.8),
                    child: const Text(
                      'Feel free to reach out for support or feedback. Our team is here to assist you and ensure you get the best out of our services.',
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
