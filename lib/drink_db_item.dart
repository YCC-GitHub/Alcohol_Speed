class DrinkDbItem {
  final String category;    // 카테고리 (소주, 맥주, 위스키/브랜디 등)
  final String name;        // 술 이름 (예: 참이슬 후레쉬, 카스 프레시 등)
  final double abv;         // 알코올 도수 (예: 0.165 -> 16.5%)
  final double defaultVolume; // 1회/1잔 기준 용량 (ml)
  final double alcoholAmount; // 1잔당 순수 알코올 양 (ml)

  DrinkDbItem({
    required this.category,
    required this.name,
    required this.abv,
    required this.defaultVolume,
    required this.alcoholAmount,
  });

  // 엑셀 데이터(Map)로부터 객체를 생성하는 팩토리 메서드
  factory DrinkDbItem.fromJson(Map<String, dynamic> json) {
    return DrinkDbItem(
      category: json['category'],
      name: json['name'],
      abv: json['abv'],
      defaultVolume: (json['defaultVolume'] as num).toDouble(),
      alcoholAmount: (json['alcoholAmount'] as num).toDouble(),
    );
  }
}

class GlobalDrinkDatabase {
  static final List<DrinkDbItem> items = [
    // 소주
    DrinkDbItem(category: '소주', name: '참이슬 후레쉬', abv: 0.160, defaultVolume: 50, alcoholAmount: 8.00),
    DrinkDbItem(category: '소주', name: '참이슬 오리지널', abv: 0.201, defaultVolume: 50, alcoholAmount: 10.05),
    DrinkDbItem(category: '소주', name: '처음처럼', abv: 0.165, defaultVolume: 50, alcoholAmount: 8.25),
    DrinkDbItem(category: '소주', name: '처음처럼 새로', abv: 0.160, defaultVolume: 50, alcoholAmount: 8.00),
    DrinkDbItem(category: '소주', name: '진로 이즈백', abv: 0.160, defaultVolume: 50, alcoholAmount: 8.00),
    DrinkDbItem(category: '소주', name: '진로 골드', abv: 0.155, defaultVolume: 50, alcoholAmount: 7.75),
    DrinkDbItem(category: '소주', name: '선양 소주', abv: 0.149, defaultVolume: 50, alcoholAmount: 7.45),
    DrinkDbItem(category: '소주', name: '좋은데이', abv: 0.160, defaultVolume: 50, alcoholAmount: 8.00),
    DrinkDbItem(category: '소주', name: '맛있는참 / 참소주', abv: 0.160, defaultVolume: 50, alcoholAmount: 8.00),
    DrinkDbItem(category: '소주', name: '잎새주', abv: 0.160, defaultVolume: 50, alcoholAmount: 8.00),
    DrinkDbItem(category: '소주', name: 'C1 소주', abv: 0.160, defaultVolume: 50, alcoholAmount: 8.00),
    DrinkDbItem(category: '소주', name: '대선 소주', abv: 0.160, defaultVolume: 50, alcoholAmount: 8.00),
    DrinkDbItem(category: '소주', name: '한라산 21', abv: 0.210, defaultVolume: 50, alcoholAmount: 10.50),
    DrinkDbItem(category: '소주', name: '한라산 순한17', abv: 0.160, defaultVolume: 50, alcoholAmount: 8.00),

    // --- 맥주 ---
    DrinkDbItem(category: '맥주', name: '카스 프레시 (캔/병)', abv: 0.045, defaultVolume: 355, alcoholAmount: 15.975),
    DrinkDbItem(category: '맥주', name: '카스 라이트', abv: 0.040, defaultVolume: 355, alcoholAmount: 14.20),
    DrinkDbItem(category: '맥주', name: '테라', abv: 0.046, defaultVolume: 355, alcoholAmount: 16.33),
    DrinkDbItem(category: '맥주', name: '켈리', abv: 0.045, defaultVolume: 355, alcoholAmount: 15.975),
    DrinkDbItem(category: '맥주', name: '크러시', abv: 0.045, defaultVolume: 355, alcoholAmount: 15.975),
    DrinkDbItem(category: '맥주', name: '클라우드 생 드래프트', abv: 0.045, defaultVolume: 355, alcoholAmount: 15.975),
    DrinkDbItem(category: '맥주', name: '하이트 제로 (무알콜)', abv: 0.000, defaultVolume: 355, alcoholAmount: 0.00),
    DrinkDbItem(category: '맥주', name: '칭따오', abv: 0.047, defaultVolume: 500, alcoholAmount: 23.50),
    DrinkDbItem(category: '맥주', name: '하이네켄', abv: 0.050, defaultVolume: 500, alcoholAmount: 25.00),
    DrinkDbItem(category: '맥주', name: '아사히 슈퍼드라이', abv: 0.050, defaultVolume: 500, alcoholAmount: 25.00),
    DrinkDbItem(category: '맥주', name: '삿포로', abv: 0.050, defaultVolume: 500, alcoholAmount: 25.00),
    DrinkDbItem(category: '맥주', name: '기네스 드래프트', abv: 0.042, defaultVolume: 440, alcoholAmount: 18.48),
    DrinkDbItem(category: '맥주', name: '스텔라 아르투아', abv: 0.050, defaultVolume: 500, alcoholAmount: 25.00),
    DrinkDbItem(category: '맥주', name: '버드와이저', abv: 0.050, defaultVolume: 500, alcoholAmount: 25.00),
    DrinkDbItem(category: '맥주', name: '1664 블랑', abv: 0.050, defaultVolume: 500, alcoholAmount: 25.00),
    DrinkDbItem(category: '맥주', name: '파울라너 바이스비어', abv: 0.055, defaultVolume: 500, alcoholAmount: 27.50),
    DrinkDbItem(category: '맥주', name: '에딩거 바이스비어', abv: 0.053, defaultVolume: 500, alcoholAmount: 26.50),
    DrinkDbItem(category: '맥주', name: '호가든', abv: 0.049, defaultVolume: 500, alcoholAmount: 24.50),
    DrinkDbItem(category: '맥주', name: '필스너 우르켈', abv: 0.044, defaultVolume: 500, alcoholAmount: 22.00),
    DrinkDbItem(category: '맥주', name: '코로나 에스트레야', abv: 0.045, defaultVolume: 355, alcoholAmount: 15.975),
    DrinkDbItem(category: '맥주', name: '발리하이', abv: 0.049, defaultVolume: 500, alcoholAmount: 24.50),
    DrinkDbItem(category: '맥주', name: '필라이트 (발포주)', abv: 0.045, defaultVolume: 355, alcoholAmount: 15.975),
    DrinkDbItem(category: '맥주', name: '필라이트 후레쉬', abv: 0.045, defaultVolume: 355, alcoholAmount: 15.975),
    DrinkDbItem(category: '맥주', name: '필굿 (발포주)', abv: 0.045, defaultVolume: 355, alcoholAmount: 15.975),

    // --- 전통주/증류주 ---
    DrinkDbItem(category: '전통주/증류주', name: '화요 17', abv: 0.170, defaultVolume: 50, alcoholAmount: 8.50),
    DrinkDbItem(category: '전통주/증류주', name: '화요 25', abv: 0.250, defaultVolume: 50, alcoholAmount: 12.50),
    DrinkDbItem(category: '전통주/증류주', name: '화요 41', abv: 0.410, defaultVolume: 50, alcoholAmount: 20.50),
    DrinkDbItem(category: '전통주/증류주', name: '원소주 스피릿', abv: 0.240, defaultVolume: 50, alcoholAmount: 12.00),
    DrinkDbItem(category: '전통주/증류주', name: '원소주 오리지널', abv: 0.220, defaultVolume: 50, alcoholAmount: 11.00),
    DrinkDbItem(category: '전통주/증류주', name: '일품진로 23', abv: 0.230, defaultVolume: 50, alcoholAmount: 11.50),
    DrinkDbItem(category: '전통주/증류주', name: '일품진로 Oak43', abv: 0.430, defaultVolume: 50, alcoholAmount: 21.50),
    DrinkDbItem(category: '전통주/증류주', name: '안동소주 (명인)', abv: 0.450, defaultVolume: 50, alcoholAmount: 22.50),
    DrinkDbItem(category: '전통주/증류주', name: '문배술 23', abv: 0.230, defaultVolume: 50, alcoholAmount: 11.50),
    DrinkDbItem(category: '전통주/증류주', name: '문배술 40', abv: 0.400, defaultVolume: 50, alcoholAmount: 20.00),
    DrinkDbItem(category: '전통주/증류주', name: '이강주', abv: 0.190, defaultVolume: 50, alcoholAmount: 9.50),
    DrinkDbItem(category: '전통주/증류주', name: '서울의밤', abv: 0.230, defaultVolume: 50, alcoholAmount: 11.50),
    DrinkDbItem(category: '전통주/증류주', name: '토끼소주 화이트', abv: 0.230, defaultVolume: 50, alcoholAmount: 11.50),
    DrinkDbItem(category: '전통주/증류주', name: '토끼소주 블랙', abv: 0.400, defaultVolume: 50, alcoholAmount: 20.00),
    DrinkDbItem(category: '전통주/증류주', name: '매화수', abv: 0.120, defaultVolume: 50, alcoholAmount: 6.00),
    DrinkDbItem(category: '전통주/증류주', name: '백세주', abv: 0.130, defaultVolume: 50, alcoholAmount: 6.50),
    DrinkDbItem(category: '전통주/증류주', name: '산사춘', abv: 0.130, defaultVolume: 50, alcoholAmount: 6.50),
    DrinkDbItem(category: '전통주/증류주', name: '청하', abv: 0.130, defaultVolume: 50, alcoholAmount: 6.50),
    DrinkDbItem(category: '전통주/증류주', name: '별빛청하 스파클링', abv: 0.070, defaultVolume: 100, alcoholAmount: 7.00),
    DrinkDbItem(category: '전통주/증류주', name: '복분자주 (보해)', abv: 0.150, defaultVolume: 50, alcoholAmount: 7.50),
    DrinkDbItem(category: '전통주/증류주', name: '국순당 생막걸리', abv: 0.060, defaultVolume: 250, alcoholAmount: 15.00),
    DrinkDbItem(category: '전통주/증류주', name: '장수 생막걸리', abv: 0.060, defaultVolume: 250, alcoholAmount: 15.00),
    DrinkDbItem(category: '전통주/증류주', name: '지평 생막걸리', abv: 0.050, defaultVolume: 250, alcoholAmount: 12.50),
    DrinkDbItem(category: '전통주/증류주', name: '느린마을 막걸리', abv: 0.060, defaultVolume: 250, alcoholAmount: 15.00),
    DrinkDbItem(category: '전통주/증류주', name: '경탁주 12도', abv: 0.120, defaultVolume: 150, alcoholAmount: 18.00),
    DrinkDbItem(category: '전통주/증류주', name: '이화백주', abv: 0.060, defaultVolume: 200, alcoholAmount: 12.00),

    // --- 위스키/브랜디 ---
    DrinkDbItem(category: '위스키/브랜디', name: '발렌타인 12년', abv: 0.400, defaultVolume: 30, alcoholAmount: 12.00),
    DrinkDbItem(category: '위스키/브랜디', name: '발렌타인 17년', abv: 0.400, defaultVolume: 30, alcoholAmount: 12.00),
    DrinkDbItem(category: '위스키/브랜디', name: '발렌타인 21년', abv: 0.400, defaultVolume: 30, alcoholAmount: 12.00),
    DrinkDbItem(category: '위스키/브랜디', name: '조니워커 레드라벨', abv: 0.400, defaultVolume: 30, alcoholAmount: 12.00),
    DrinkDbItem(category: '위스키/브랜디', name: '조니워커 블랙라벨', abv: 0.400, defaultVolume: 30, alcoholAmount: 12.00),
    DrinkDbItem(category: '위스키/브랜디', name: '조니워커 블루라벨', abv: 0.400, defaultVolume: 30, alcoholAmount: 12.00),
    DrinkDbItem(category: '위스키/브랜디', name: '시바스 리갈 12년', abv: 0.400, defaultVolume: 30, alcoholAmount: 12.00),
    DrinkDbItem(category: '위스키/브랜디', name: '시바스 리갈 18년', abv: 0.400, defaultVolume: 30, alcoholAmount: 12.00),
    DrinkDbItem(category: '위스키/브랜디', name: '산토리 가쿠빈', abv: 0.400, defaultVolume: 30, alcoholAmount: 12.00),
    DrinkDbItem(category: '위스키/브랜디', name: '짐빔 화이트 (버번)', abv: 0.400, defaultVolume: 30, alcoholAmount: 12.00),
    DrinkDbItem(category: '위스키/브랜디', name: '잭 다니엘스 (테네시)', abv: 0.400, defaultVolume: 30, alcoholAmount: 12.00),
    DrinkDbItem(category: '위스키/브랜디', name: '잭 다니엘스 허니', abv: 0.350, defaultVolume: 30, alcoholAmount: 10.50),
    DrinkDbItem(category: '위스키/브랜디', name: '잭 다니엘스 애플', abv: 0.350, defaultVolume: 30, alcoholAmount: 10.50),
    DrinkDbItem(category: '위스키/브랜디', name: '메이커스 마크', abv: 0.450, defaultVolume: 30, alcoholAmount: 13.50),
    DrinkDbItem(category: '위스키/브랜디', name: '버팔로 트레이스', abv: 0.450, defaultVolume: 30, alcoholAmount: 13.50),
    DrinkDbItem(category: '위스키/브랜디', name: '글렌피딕 12년', abv: 0.400, defaultVolume: 30, alcoholAmount: 12.00),
    DrinkDbItem(category: '위스키/브랜디', name: '글렌피딕 15년', abv: 0.400, defaultVolume: 30, alcoholAmount: 12.00),
    DrinkDbItem(category: '위스키/브랜디', name: '글렌리벳 12년', abv: 0.400, defaultVolume: 30, alcoholAmount: 12.00),
    DrinkDbItem(category: '위스키/브랜디', name: '맥캘란 12년 더블캐스크', abv: 0.400, defaultVolume: 30, alcoholAmount: 12.00),
    DrinkDbItem(category: '위스키/브랜디', name: '발베니 12년 더블우드', abv: 0.400, defaultVolume: 30, alcoholAmount: 12.00),
    DrinkDbItem(category: '위스키/브랜디', name: '글렌모렌지 오리지널', abv: 0.400, defaultVolume: 30, alcoholAmount: 12.00),
    DrinkDbItem(category: '위스키/브랜디', name: '아드벡 10년', abv: 0.460, defaultVolume: 30, alcoholAmount: 13.80),
    DrinkDbItem(category: '위스키/브랜디', name: '라프로익 10년', abv: 0.400, defaultVolume: 30, alcoholAmount: 12.00),
    DrinkDbItem(category: '위스키/브랜디', name: '탈리스커 10년', abv: 0.458, defaultVolume: 30, alcoholAmount: 13.74),
    DrinkDbItem(category: '위스키/브랜디', name: '헤네시 VSOP', abv: 0.400, defaultVolume: 30, alcoholAmount: 12.00),
    DrinkDbItem(category: '위스키/브랜디', name: '레미마틴 VSOP', abv: 0.400, defaultVolume: 30, alcoholAmount: 12.00),

    // --- 보드카/진/기타 ---
    DrinkDbItem(category: '보드카/진/기타', name: '앱솔루트 보드카', abv: 0.400, defaultVolume: 30, alcoholAmount: 12.00),
    DrinkDbItem(category: '보드카/진/기타', name: '앱솔루트 피치/어피치', abv: 0.380, defaultVolume: 30, alcoholAmount: 11.40),
    DrinkDbItem(category: '보드카/진/기타', name: '스미노프 레드', abv: 0.375, defaultVolume: 30, alcoholAmount: 11.25),
    DrinkDbItem(category: '보드카/진/기타', name: '스미노프 그린애플', abv: 0.375, defaultVolume: 30, alcoholAmount: 11.25),
    DrinkDbItem(category: '보드카/진/기타', name: '봄베이 사파이어 (진)', abv: 0.470, defaultVolume: 30, alcoholAmount: 14.10),
    DrinkDbItem(category: '보드카/진/기타', name: '탠커레이 (진)', abv: 0.473, defaultVolume: 30, alcoholAmount: 14.19),
    DrinkDbItem(category: '보드카/진/기타', name: '핸드릭스 진', abv: 0.414, defaultVolume: 30, alcoholAmount: 12.42),
    DrinkDbItem(category: '보드카/진/기타', name: '바카디 슈페리어 (흰 럼)', abv: 0.375, defaultVolume: 30, alcoholAmount: 11.25),
    DrinkDbItem(category: '보드카/진/기타', name: '바카디 모히또', abv: 0.180, defaultVolume: 50, alcoholAmount: 9.00),
    DrinkDbItem(category: '보드카/진/기타', name: '호세 쿠에르보 에스페샬 (데킬라)', abv: 0.380, defaultVolume: 30, alcoholAmount: 11.40),
    DrinkDbItem(category: '보드카/진/기타', name: '아구아와로 (데킬라)', abv: 0.380, defaultVolume: 30, alcoholAmount: 11.40),
    DrinkDbItem(category: '보드카/진/기타', name: '예거마이스터', abv: 0.350, defaultVolume: 30, alcoholAmount: 10.50),
    DrinkDbItem(category: '보드카/진/기타', name: '엑스레이티드', abv: 0.170, defaultVolume: 45, alcoholAmount: 7.65),
    DrinkDbItem(category: '보드카/진/기타', name: '피치트리', abv: 0.200, defaultVolume: 45, alcoholAmount: 9.00),
    DrinkDbItem(category: '보드카/진/기타', name: '말리부 럼', abv: 0.210, defaultVolume: 45, alcoholAmount: 9.45),
    DrinkDbItem(category: '보드카/진/기타', name: '깔루아', abv: 0.200, defaultVolume: 45, alcoholAmount: 9.00),
    DrinkDbItem(category: '보드카/진/기타', name: '베일리스 아이리쉬 크림', abv: 0.170, defaultVolume: 45, alcoholAmount: 7.65),
    DrinkDbItem(category: '보드카/진/기타', name: '짐빔 하이볼 캔 (자몽/레몬)', abv: 0.050, defaultVolume: 350, alcoholAmount: 17.50),
    DrinkDbItem(category: '보드카/진/기타', name: '어프어프 하이볼 캔', abv: 0.090, defaultVolume: 500, alcoholAmount: 45.00),
    DrinkDbItem(category: '보드카/진/기타', name: '순하리 레몬진 4.5%', abv: 0.045, defaultVolume: 355, alcoholAmount: 15.975),
    DrinkDbItem(category: '보드카/진/기타', name: '순하리 레몬진 7.0%', abv: 0.070, defaultVolume: 355, alcoholAmount: 24.85),
    DrinkDbItem(category: '보드카/진/기타', name: 'KGB 레몬', abv: 0.050, defaultVolume: 330, alcoholAmount: 16.50),
    DrinkDbItem(category: '보드카/진/기타', name: '크루저 블루베리', abv: 0.050, defaultVolume: 330, alcoholAmount: 16.50),

    // --- 와인/사케 ---
    DrinkDbItem(category: '와인/사케', name: '몬테스 알파 카베르네 소비뇽', abv: 0.145, defaultVolume: 125, alcoholAmount: 18.125),
    DrinkDbItem(category: '와인/사케', name: '19 Crimes 샤르도네/레드', abv: 0.135, defaultVolume: 125, alcoholAmount: 16.875),
    DrinkDbItem(category: '와인/사케', name: '디아블로 카베르네 소비뇽', abv: 0.135, defaultVolume: 125, alcoholAmount: 16.875),
    DrinkDbItem(category: '와인/사케', name: '옐로우테일 쉬라즈', abv: 0.135, defaultVolume: 125, alcoholAmount: 16.875),
    DrinkDbItem(category: '와인/사케', name: 'G7 카베르네 소비뇽', abv: 0.130, defaultVolume: 125, alcoholAmount: 16.25),
    DrinkDbItem(category: '와인/사케', name: '빌라 엠 (Villa M)', abv: 0.050, defaultVolume: 125, alcoholAmount: 6.25),
    DrinkDbItem(category: '와인/사케', name: '간바레 오또상 (사케)', abv: 0.145, defaultVolume: 100, alcoholAmount: 14.50),
    DrinkDbItem(category: '와인/사케', name: '마루 (사케)', abv: 0.135, defaultVolume: 100, alcoholAmount: 13.50),
    DrinkDbItem(category: '와인/사케', name: '쿠보타 센주 (사케)', abv: 0.155, defaultVolume: 100, alcoholAmount: 15.50),
    DrinkDbItem(category: '와인/사케', name: '월계관 준마이 (사케)', abv: 0.156, defaultVolume: 100, alcoholAmount: 15.60),
  ];

  // 카테고리별로 술을 필터링하는 함수
  static List<DrinkDbItem> getByCategory(String category) {
    return items.where((item) => item.category == category).toList();
  }
}