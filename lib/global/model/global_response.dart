class GlobalResponse {
  int? code;
  String? message;

  GlobalResponse({
    this.code,
    this.message,
  });

  factory GlobalResponse.fromJson(Map<String, dynamic> json) => GlobalResponse(
        code: json["code"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
      };
}
