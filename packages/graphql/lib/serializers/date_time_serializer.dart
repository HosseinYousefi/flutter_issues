import 'package:built_value/serializer.dart';

class DateTimeSerializer implements PrimitiveSerializer<DateTime> {
  @override
  DateTime deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    assert(serialized is String);
    return DateTime.parse(serialized as String);
  }

  @override
  Object serialize(Serializers serializers, DateTime object,
      {FullType specifiedType = FullType.unspecified}) {
    return object.toIso8601String();
  }

  @override
  Iterable<Type> get types => [DateTime];

  @override
  String get wireName => 'DateTime';
}
