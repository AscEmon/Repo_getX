class GetResponse {
  int? page;
  int? perPage;
  int? totalrecord;
  int? totalPages;
  List<GetResponseData>? data;

  GetResponse({
    this.page,
    this.perPage,
    this.totalrecord,
    this.totalPages,
    this.data,
  });

  factory GetResponse.fromJson(Map<String, dynamic> json) => GetResponse(
        page: json["page"],
        perPage: json["per_page"],
        totalrecord: json["totalrecord"],
        totalPages: json["total_pages"],
        data: json["data"] == null
            ? []
            : List<GetResponseData>.from(
                json["data"]!.map((x) => GetResponseData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "per_page": perPage,
        "totalrecord": totalrecord,
        "total_pages": totalPages,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class GetResponseData {
  int? id;
  String? name;
  String? email;
  String? profilepicture;
  String? location;
  DateTime? createdate;

  GetResponseData({
    this.id,
    this.name,
    this.email,
    this.profilepicture,
    this.location,
    this.createdate,
  });

  factory GetResponseData.fromJson(Map<String, dynamic> json) =>
      GetResponseData(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        profilepicture: json["profilepicture"],
        location: json["location"],
        createdate: json["createdat"] == null
            ? null
            : DateTime.parse(json["createdat"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "profilepicture": profilepicture,
        "location": location,
        "createdat": createdate?.toIso8601String(),
      };
}
