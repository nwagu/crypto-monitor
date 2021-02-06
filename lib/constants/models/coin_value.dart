import 'package:json_annotation/json_annotation.dart';

/// This allows the `CoinValue` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'coin_value.g.dart';

@JsonSerializable()

class CoinValue {
  @JsonKey(name: 'NGN')
  final double ngn;
  @JsonKey(name: 'USD')
  final double usd;

  CoinValue(this.ngn, this.usd);

  factory CoinValue.fromJson(Map<String, dynamic> json) => _$CoinValueFromJson(json);

  Map<String, dynamic> toJson() => _$CoinValueToJson(this);

}
