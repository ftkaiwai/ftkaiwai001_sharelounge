// reservation.dart
import 'package:flutter/material.dart';

// 予約ページのクラス
class ReservationPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('予約する'),
      ),
      body: Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                '店舗',
                style: TextStyle(fontSize: 18, fontFamily: 'NotoSansJP'),
              ),
              const Text(
                'Tsutaya BookStore 二子玉川',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 20),
              const Text('利用日'),
              const DropdownMenu(dropdownMenuEntries: <DropdownMenuEntry<String>>[
                DropdownMenuEntry(value: '2024/10/14', label: '2024/10/14'),
                DropdownMenuEntry(value: '2024/10/15', label: '2024/10/15'),
                DropdownMenuEntry(value: '2024/10/16', label: '2024/10/16'),
                DropdownMenuEntry(value: '2024/10/17', label: '2024/10/17'),
              ], width: 370,),
              const SizedBox(height: 10),
              const Text('利用時間'),
              const DropdownMenu(dropdownMenuEntries: <DropdownMenuEntry<String>>[
                DropdownMenuEntry(value: '14:00', label: '14:00'),
                DropdownMenuEntry(value: '15:00', label: '15:00'),
                DropdownMenuEntry(value: '16:00', label: '16:00'),
                DropdownMenuEntry(value: '17:00', label: '17:00'),
              ],
              width: 370,),
              const SizedBox(height: 10),
              const Row(
                children: <Widget>[
                  Text('人数'),
                  SizedBox(width: 170),
                  Text('プラン'),
                ],
              ),

              const Row(
                children: <Widget>[
                  DropdownMenu(dropdownMenuEntries: <DropdownMenuEntry<String>>[
                    DropdownMenuEntry(value: '1', label: '1人'),
                    DropdownMenuEntry(value: '2', label: '2人'),
                    DropdownMenuEntry(value: '3', label: '3人'),
                    DropdownMenuEntry(value: '4', label: '4人'),
                  ],
                    width: 170,),
                  SizedBox(width: 30),
                  DropdownMenu(dropdownMenuEntries: <DropdownMenuEntry<String>>[
                    DropdownMenuEntry(value: 'PlanA', label: '通常'),
                    DropdownMenuEntry(value: 'PlanB', label: 'アルコール'),

                  ],
                    width: 170,),
                ],
              ),
              const SizedBox(height: 30),
              const Row(
                children: <Widget>[
                  Text('14:00', style: TextStyle(fontSize: 18),),
                  SizedBox(width: 8), // テキストとラインの間にスペースを追加
                  Expanded(
                    child: Divider(
                      color: Colors.grey, // 横棒の色
                      thickness: 1, // 横棒の太さ
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(left:60),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white, // 背景色
                    border: Border.all(color: Colors.grey, width: 1,), // 枠線の色と太さ
                  ),
                child: SizedBox(
                  height: 60,
                  width: 320,
                  child: Center(
                    child: CircleAvatar(
                      radius: 15,  // 丸の大きさ
                      backgroundColor: Colors.white,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.red, width: 1), // 丸の枠線の色と太さ
                        ),
                        child: const SizedBox.expand(),
                    ),
                ),
                ),
              ),),),
              const Row(
                children: <Widget>[
                  Text('15:00', style: TextStyle(fontSize: 18),),
                  SizedBox(width: 8), // テキストとラインの間にスペースを追加
                  Expanded(
                    child: Divider(
                      color: Colors.grey, // 横棒の色
                      thickness: 1, // 横棒の太さ
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(left:60),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white, // 背景色
                    border: Border.all(color: Colors.grey, width: 1,), // 枠線の色と太さ
                  ),
                  child: SizedBox(
                    height: 60,
                    width: 320,
                    child: Center(
                      child: CircleAvatar(
                        radius: 15,  // 丸の大きさ
                        backgroundColor: Colors.white,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.red, width: 1), // 丸の枠線の色と太さ
                          ),
                          child: const SizedBox.expand(),
                        ),
                      ),
                    ),
                  ),),),
              const Row(
                children: <Widget>[
                  Text('16:00', style: TextStyle(fontSize: 18),),
                  SizedBox(width: 8), // テキストとラインの間にスペースを追加
                  Expanded(
                    child: Divider(
                      color: Colors.grey, // 横棒の色
                      thickness: 1, // 横棒の太さ
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(left:60),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white, // 背景色
                    border: Border.all(color: Colors.grey, width: 1,), // 枠線の色と太さ
                  ),
                  child: SizedBox(
                    height: 60,
                    width: 320,
                    child: Center(
                      child: CircleAvatar(
                        radius: 15,  // 丸の大きさ
                        backgroundColor: Colors.white,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.red, width: 1), // 丸の枠線の色と太さ
                          ),
                          child: const SizedBox.expand(),
                        ),
                      ),
                    ),
                  ),),),
              const Row(
                children: <Widget>[
                  Text('17:00', style: TextStyle(fontSize: 18),),
                  SizedBox(width: 8), // テキストとラインの間にスペースを追加
                  Expanded(
                    child: Divider(
                      color: Colors.grey, // 横棒の色
                      thickness: 1, // 横棒の太さ
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(left:60),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white, // 背景色
                    border: Border.all(color: Colors.grey, width: 1,), // 枠線の色と太さ
                  ),
                  child: SizedBox(
                    height: 60,
                    width: 320,
                    child: Center(
                      child: CircleAvatar(
                        radius: 15,  // 丸の大きさ
                        backgroundColor: Colors.white,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.red, width: 1), // 丸の枠線の色と太さ
                          ),
                          child: const SizedBox.expand(),
                        ),
                      ),
                    ),
                  ),),),

            ],
          ),
        ),
      ),
    );
  }
}
