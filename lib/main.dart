import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Share Lounge Booking App',
      home: Scaffold(
        body: Stack(
          children: [
            // 背景画像を画面いっぱいに表示
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/key.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // 画面上部に横長のボックスを配置
            Positioned(
              top: 80.0,
              left: 24.0,
              right: 24.0,
              child: Container(
                height: 80.0,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '二子玉川',
                    style: const TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'NotoSansJP',
                    ),
                  ),
                ),
              ),
            ),
            // 画面下部に横並びの3つのボックスを配置
            Positioned(
              bottom: 100.0,
              left: 24.0,
              right: 24.0,
              child: SafeArea(
                child: Container(
                  height: 120.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // 1つ目のボックス
                      _buildIconBox(
                        icon: Icons.event_seat,
                        label: '空席確認',
                      ),
                      // 2つ目のボックス
                      _buildIconBox(
                        icon: Icons.calendar_month,
                        label: '予約',
                      ),
                      // 3つ目のボックス
                      _buildIconBox(
                        icon: Icons.person,
                        label: 'マイページ',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // アイコンとテキストを含むボックスを作成する関数
  Widget _buildIconBox({required IconData icon, required String label}) {
    return Container(
      width: 110,
      height: 110,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.6),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 50.0,
            color: Colors.blue,
          ),
          SizedBox(height: 8.0), // アイコンとテキストの間隔
          Text(
            label,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}