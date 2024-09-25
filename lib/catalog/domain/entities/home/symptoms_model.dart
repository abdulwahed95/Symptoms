import 'package:freezed_annotation/freezed_annotation.dart';

part 'symptoms_model.freezed.dart';
part 'symptoms_model.g.dart';

@freezed
class SymptomsModel with _$SymptomsModel {
  const factory SymptomsModel({
    required String name,
    required String description,
    required int severity,
    required int timesReported,
    required DateTime timeReported,
  }) = _SymptomsModel;

  factory SymptomsModel.fromJson(Map<String, dynamic> json) =>
      _$SymptomsModelFromJson(json);
}
