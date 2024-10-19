import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert'; // JSONデータの解析用

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
            // 天気データを表示するボックス
            Positioned(
              top: 80.0,
              left: 24.0,
              right: 24.0,
              child: WeatherBox(),
            ),
            // 画面下部のアイコンボックス
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
                      _buildIconBox(
                        icon: Icons.event_seat,
                        label: '空席確認',
                      ),
                      _buildIconBox(
                        icon: Icons.calendar_month,
                        label: '予約',
                      ),
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

  // アイコンボックスの関数
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
          SizedBox(height: 8.0),
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

// 天気データを表示するウィジェット
class WeatherBox extends StatefulWidget {
  @override
  _WeatherBoxState createState() => _WeatherBoxState();
}

class _WeatherBoxState extends State<WeatherBox> {
  String temperature = 'Loading...';
  String weather = '';
  String humidity = '';
  String iconUrl = '';

  @override
  void initState() {
    super.initState();
    fetchWeather();
  }

  // 天気データを取得する関数
  Future<void> fetchWeather() async {
    final apiKey = '438c204d479f450f44fba4ac7558b0b6'; // OpenWeatherMapのAPIキー
    final lat = 35.6115; // 二子玉川の緯度
    final lon = 139.6317; // 二子玉川の経度
    final url =
        'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&units=metric&appid=$apiKey';

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        setState(() {
          temperature = '${data['main']['temp']}°C';
          weather = data['weather'][0]['description'];
          humidity = '${data['main']['humidity']}%';
          iconUrl = 'http://openweathermap.org/img/wn/${data['weather'][0]['icon']}@2x.png';
        });
      } else {
        setState(() {
          temperature = 'Error';
          weather = 'Error';
          humidity = 'Error';
        });
      }
    } catch (e) {
      setState(() {
        temperature = 'Error';
        weather = 'Error';
        humidity = 'Error';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '二子玉川',
            style: const TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'NotoSansJP',
            ),
          ),
          // 天気アイコン、気温、湿度を横並びに配置
          Row(
            children: [
              // 天気アイコン
              if (iconUrl.isNotEmpty)
                Image.network(
                  iconUrl,
                  width: 30.0,
                  height: 30.0,
                ),
              SizedBox(width: 8.0),
              // 気温
              Text(
                '$temperature',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 16.0),
              // 湿度アイコンと湿度
              Icon(Icons.water_drop, color: Colors.blue, size: 20.0),
              SizedBox(width: 4.0),
              Text(
                '$humidity',
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
