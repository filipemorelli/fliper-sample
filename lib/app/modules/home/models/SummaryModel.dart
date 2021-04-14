import 'dart:convert';

class SummaryModel {
  double cdi;
  double gain;
  int id;
  double profitability;
  double total;
  bool hasHistory;
  SummaryModel({
    required this.cdi,
    required this.gain,
    required this.id,
    required this.profitability,
    required this.total,
    required this.hasHistory,
  });

  SummaryModel copyWith({
    double? cdi,
    double? gain,
    int? id,
    double? profitability,
    double? total,
    bool? hasHistory,
  }) {
    return SummaryModel(
      cdi: cdi ?? this.cdi,
      gain: gain ?? this.gain,
      id: id ?? this.id,
      profitability: profitability ?? this.profitability,
      total: total ?? this.total,
      hasHistory: hasHistory ?? this.hasHistory,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'cdi': cdi,
      'gain': gain,
      'id': id,
      'profitability': profitability,
      'total': total,
      'hasHistory': hasHistory,
    };
  }

  factory SummaryModel.fromMap(Map<String, dynamic> map) {
    return SummaryModel(
      cdi: map['cdi'],
      gain: map['gain'],
      id: map['id'],
      profitability: map['profitability'],
      total: map['total'],
      hasHistory: map['hasHistory'],
    );
  }

  String toJson() => json.encode(toMap());

  factory SummaryModel.fromJson(String source) => SummaryModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'SummaryModel(cdi: $cdi, gain: $gain, id: $id, profitability: $profitability, total: $total, hasHistory: $hasHistory)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SummaryModel &&
        other.cdi == cdi &&
        other.gain == gain &&
        other.id == id &&
        other.profitability == profitability &&
        other.total == total &&
        other.hasHistory == hasHistory;
  }

  @override
  int get hashCode {
    return cdi.hashCode ^ gain.hashCode ^ id.hashCode ^ profitability.hashCode ^ total.hashCode ^ hasHistory.hashCode;
  }
}
