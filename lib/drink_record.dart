import 'drink_db_item.dart';

class DrinkRecord {
  final DrinkDbItem item;       // 선택한 술 정보
  final int count;              // 마신 잔 수 또는 수량
  final DateTime timestamp;     // 마신 시간

  DrinkRecord({
    required this.item,
    required this.count,
    required this.timestamp,
  });

  // 1. 이 기록에서 섭취한 총 순수 알코올 양 (ml)
  double get totalAlcoholAmount => item.alcoholAmount * count;

  // 2. 기준 주류(참이슬 후레쉬 1잔 = 8.0ml)로 환산한 잔 수 계산
  double get convertedStandardGlasses {
    const double standardSojuAlcohol = 8.0; // 참이슬 후레쉬 1잔당 순수 알코올 (8.0ml)
    return totalAlcoholAmount / standardSojuAlcohol;
  }
}

class DrinkSessionManager {
  final List<DrinkRecord> records = [];

  // 음주 기록 추가 함수
  void addRecord(DrinkDbItem item, int count, DateTime timestamp) {
    records.add(DrinkRecord(
      item: item,
      count: count,
      timestamp: timestamp,
    ));
  }

  // 총 섭취한 순수 알코올 양 (ml)
  double get totalAlcohol => 
      records.fold(0.0, (sum, record) => sum + record.totalAlcoholAmount);

  // 참이슬 후레쉬 기준 총 환산 잔 수
  double get totalConvertedGlasses {
    const double standardSojuAlcohol = 8.0;
    return totalAlcohol / standardSojuAlcohol;
  }

  // 3. '시속 N잔' 계산 로직 (참이슬 환산 기준 시간당 음주 속도)
  double calculateHourlyPace() {
    if (records.isEmpty) return 0.0;

    // 시간 순으로 정렬 후 첫 잔 마신 시간 확인
    records.sort((a, b) => a.timestamp.compareTo(b.timestamp));
    DateTime startTime = records.first.timestamp;
    DateTime endTime = DateTime.now(); // 현재 시간 기준

    // 경과 시간 계산 (시간 단위)
    double hours = endTime.difference(startTime).inMinutes / 60.0;

    // 시간이 너무 짧게 흘렀을 경우(예: 3분 미만) 분모가 0이 되는 것을 방지
    if (hours < 0.05) {
      return totalConvertedGlasses; 
    }

    // (총 참이슬 환산 잔 수) / (총 경과 시간) = 시속 N잔
    return totalConvertedGlasses / hours;
  }
}