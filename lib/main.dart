import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Center(
          child: Container(
            margin: const EdgeInsets.all(32.0),
            color: Colors.white,
            height: 480.0,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.amberAccent,
                    width: double.infinity,
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Image.asset('assets/img/laptop.png'),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'PRODUCT NAME.',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Description of the product.',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: const [
                            Text(
                              '4.5',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(
                              width: 4.0,
                            ),
                            Icon(Icons.star, color: Colors.black),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MaterialButton(
                        padding: const EdgeInsets.only(left: 32.0, right: 32.0),
                        height: 52,
                        onPressed: () {},
                        color: Colors.grey[200],
                        child: const Text('Add To Cart',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16)),
                      ),
                      MaterialButton(
                        padding: const EdgeInsets.only(left: 32.0, right: 32.0),
                        height: 52,
                        onPressed: () {},
                        color: Colors.grey[200],
                        child: const Text('Buy Now',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 60.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
