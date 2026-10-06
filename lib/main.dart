import 'dart:async';
import 'package:flutter/material.dart';
import 'drink_db_item.dart';
import 'drink_record.dart'; // DrinkRecord, DrinkSessionManager 있는 파일

void main() {
  runApp(const SulAppTest());
}

class SulAppTest extends StatefulWidget {
  const SulAppTest({super.key});

  @override
  State<SulAppTest> createState() => _SulAppTestState();
}

class _SulAppTestState extends State<SulAppTest> {
  final DrinkSessionManager _session = DrinkSessionManager();
  Timer? _timer;

  // TODO: 이미 연결해둔 DB에서 가져오는 술 목록 / 현재 선택된 술로 교체
  late DrinkDbItem _selectedItem;

  @override
  void initState() {
    super.initState();
    // 시속은 시간이 흐르면 계속 변하므로 30초마다 화면 갱신
    _timer = Timer.periodic(const Duration(seconds: 30), (_) {
      if (mounted) setState(() {});
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  // 총 마신 잔 수 (기록의 count 합)
  int get _totalCount =>
      _session.records.fold(0, (sum, r) => sum + r.count);

  void _addDrink() {
    setState(() {
      _session.addRecord(_selectedItem, 1, DateTime.now());
    });
  }

  void _undoDrink() {
    if (_session.records.isEmpty) return;
    setState(() {
      _session.records.removeLast();
    });
  }

  @override
  Widget build(BuildContext context) {
    final pace = _session.calculateHourlyPace();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('주량판독기 테스트'),
          centerTitle: true,
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.local_bar, size: 80, color: Colors.indigo),
              const SizedBox(height: 20),
              const Text(
                '오늘 마신 술 잔 수',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                '$_totalCount 잔',
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
              ),
              const SizedBox(height: 20),

              // 환산 정보 카드
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 32),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      _infoRow('참이슬 환산',
                          '${_session.totalConvertedGlasses.toStringAsFixed(1)} 잔'),
                      _infoRow('시속',
                          '${pace.toStringAsFixed(1)} 잔/시간'),
                      _infoRow('순수 알코올',
                          '${_session.totalAlcohol.toStringAsFixed(1)} ml'),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: _addDrink,
                    icon: const Icon(Icons.add),
                    label: const Text('한 잔 더 마심!'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 12),
                      textStyle: const TextStyle(fontSize: 18),
                    ),
                  ),
                  const SizedBox(width: 12),
                  IconButton(
                    onPressed: _undoDrink,
                    icon: const Icon(Icons.undo),
                    color: Colors.indigo,
                    tooltip: '마지막 기록 취소',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _infoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(fontSize: 16)),
          Text(value,
              style: const TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}