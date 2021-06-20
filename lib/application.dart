import 'package:flutter/material.dart';
import 'footer.dart';
import 'incrementDecrement.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Increment Decrement Application",
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xffe8e8e8),
          appBar: AppBar(
            title: Text(
              "Increment Decrement",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.black87,
          ),
          body: IncrementDecrement(),
          bottomNavigationBar: Footer(),
        ),
      ),
    );
  }
}
