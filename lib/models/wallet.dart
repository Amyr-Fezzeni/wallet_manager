import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class WalletModel {
  double totalBudget;
  double monthBudget;
  double weekBudget;
  List<DaySpending> walletData;
  WalletModel({
    required this.totalBudget,
    required this.monthBudget,
    required this.weekBudget,
    required this.walletData,
  });

  @override
  String toString() {
    return 'WalletModel(totalBudget: $totalBudget, monthBudget: $monthBudget, weekBudget: $weekBudget, walletData: $walletData)';
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'totalBudget': totalBudget,
      'monthBudget': monthBudget,
      'weekBudget': weekBudget,
      'walletData': walletData.map((x) => x.toMap()).toList(),
    };
  }

  factory WalletModel.fromMap(Map<String, dynamic> map) {
    return WalletModel(
      totalBudget: map['totalBudget'] as double,
      monthBudget: map['monthBudget'] as double,
      weekBudget: map['weekBudget'] as double,
      walletData: List<DaySpending>.from((map['walletData'] as List<int>).map<DaySpending>((x) => DaySpending.fromMap(x as Map<String,dynamic>),),),
    );
  }

  String toJson() => json.encode(toMap());

  factory WalletModel.fromJson(String source) => WalletModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

class DaySpending {
  DateTime date;
  List<Item> items;
  DaySpending({
    required this.date,
    required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date.millisecondsSinceEpoch,
      'items': items.map((x) => x.toMap()).toList(),
    };
  }

  factory DaySpending.fromMap(Map<String, dynamic> map) {
    return DaySpending(
      date: DateTime.fromMillisecondsSinceEpoch(map['date'] as int),
      items: List<Item>.from(
        (map['items'] as List<int>).map<Item>(
          (x) => Item.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory DaySpending.fromJson(String source) =>
      DaySpending.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'DaySpending(date: $date, items: $items)';
}

class Item {
  String img;
  DateTime date;
  String title;
  double cost;
  Item({
    required this.img,
    required this.date,
    required this.title,
    required this.cost,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'img': img,
      'date': date.millisecondsSinceEpoch,
      'title': title,
      'cost': cost,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      img: map['img'] as String,
      date: DateTime.fromMillisecondsSinceEpoch(map['date'] as int),
      title: map['title'] as String,
      cost: map['cost'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) =>
      Item.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Item(img: $img, date: $date, title: $title, cost: $cost)';
  }
}
