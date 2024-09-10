import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'list_view.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to User List App', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shadowColor: Colors.blueAccent,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              child: Text('Go to User List', style: TextStyle(fontSize: 18)),
              onPressed: () {
                Get.to(() => ListViewPage());
              },
            ),
          ],
        ),
      ),
    );
  }
}
