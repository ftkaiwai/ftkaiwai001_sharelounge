import 'package:flutter/material.dart';
import 'reservation.dart'; // reservation.dartファイルをインポート

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: ReservationPage(), // ReservationPageを最初に表示
    );
  }
}
