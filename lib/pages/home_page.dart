import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.home, color: Colors.blue),
                  onPressed: () => Navigator.pushNamed(context, '/home'),
                ),
                const Text('Home', style: TextStyle(color: Colors.blue)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.info, color: Colors.blue),
                  onPressed: () => Navigator.pushNamed(context, '/about'),
                ),
                const Text('About', style: TextStyle(color: Colors.blue)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.data_usage, color: Colors.blue),
                  onPressed: () => Navigator.pushNamed(context, '/data'),
                ),
                const Text('Data', style: TextStyle(color: Colors.blue)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.help, color: Colors.blue),
                  onPressed: () => Navigator.pushNamed(context, '/help'),
                ),
                const Text('Help', style: TextStyle(color: Colors.blue)),
              ],
            ),
          ),
        ],
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
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    // ignore: deprecated_member_use
                    color: Colors.white.withOpacity(0.8),
                    child: const Text(
                      'Welcome to our app! We are excited to have you here. Explore the features and enjoy the seamless experience.',
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.start,
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
