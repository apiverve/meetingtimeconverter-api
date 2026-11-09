/// Response models for the Meeting Time Converter API.

/// API Response wrapper.
class MeetingtimeconverterResponse {
  final String status;
  final dynamic error;
  final MeetingtimeconverterData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  MeetingtimeconverterResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory MeetingtimeconverterResponse.fromJson(Map<String, dynamic> json) => MeetingtimeconverterResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? MeetingtimeconverterData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Meeting Time Converter API.

class MeetingtimeconverterData {
  String? originalTime;
  String? convertedTime;
  String? date;
  String? fromTimezone;
  String? toTimezone;
  num? timeDifference;
  String? fromOffset;
  String? toOffset;

  MeetingtimeconverterData({
    this.originalTime,
    this.convertedTime,
    this.date,
    this.fromTimezone,
    this.toTimezone,
    this.timeDifference,
    this.fromOffset,
    this.toOffset,
  });

  factory MeetingtimeconverterData.fromJson(Map<String, dynamic> json) => MeetingtimeconverterData(
      originalTime: json['originalTime'],
      convertedTime: json['convertedTime'],
      date: json['date'],
      fromTimezone: json['fromTimezone'],
      toTimezone: json['toTimezone'],
      timeDifference: json['timeDifference'],
      fromOffset: json['fromOffset'],
      toOffset: json['toOffset'],
    );
}

class MeetingtimeconverterRequest {
  String time;
  String fromTimezone;
  String toTimezone;
  String? date;

  MeetingtimeconverterRequest({
    required this.time,
    required this.fromTimezone,
    required this.toTimezone,
    this.date,
  });

  Map<String, dynamic> toJson() => {
      'time': time,
      'fromTimezone': fromTimezone,
      'toTimezone': toTimezone,
      if (date != null) 'date': date,
    };
}
