// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoinValue _$CoinValueFromJson(Map<String, dynamic> json) {
  return CoinValue(
    (json['NGN'] as num)?.toDouble(),
    (json['USD'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$CoinValueToJson(CoinValue instance) => <String, dynamic>{
      'NGN': instance.ngn,
      'USD': instance.usd,
    };
