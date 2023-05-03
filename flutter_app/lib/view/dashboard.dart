import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/SimpleInterest');
              },
              child: const Text('Simple Interest'),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/arithmeticRoute' );
              },
              child: const Text('Arithmetic'),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
               Navigator.pushNamed(context, '/AreaOfCircle');
              },
              child: const Text('Area of circle'),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
               Navigator.pushNamed(context, '/displayname');
              },
              child: const Text('Display Name'),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
               Navigator.pushNamed(context, '/richtext');
              },
              child: const Text('Rich text'),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
               Navigator.pushNamed(context, '/columnview');
              },
              child: const Text(' Column view'),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
               Navigator.pushNamed(context, '/containerview');
              },
              child: const Text('container view'),
            ),
             ElevatedButton(
              onPressed: () {
               Navigator.pushNamed(context, '/loadimageview');
              },
              child: const Text('Load Image'),
            ),
          ],
        ),
      ),
    );
  }
}