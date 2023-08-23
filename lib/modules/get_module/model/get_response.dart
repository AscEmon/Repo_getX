

class GetResponse {
    List<Post>? posts;
    List<Comment>? comments;
    Profile? profile;

    GetResponse({
        this.posts,
        this.comments,
        this.profile,
    });

    factory GetResponse.fromJson(Map<String, dynamic> json) => GetResponse(
        posts: json["posts"] == null ? [] : List<Post>.from(json["posts"]!.map((x) => Post.fromJson(x))),
        comments: json["comments"] == null ? [] : List<Comment>.from(json["comments"]!.map((x) => Comment.fromJson(x))),
        profile: json["profile"] == null ? null : Profile.fromJson(json["profile"]),
    );

    Map<String, dynamic> toJson() => {
        "posts": posts == null ? [] : List<dynamic>.from(posts!.map((x) => x.toJson())),
        "comments": comments == null ? [] : List<dynamic>.from(comments!.map((x) => x.toJson())),
        "profile": profile?.toJson(),
    };
}

class Comment {
    int? id;
    String? body;
    int? postId;

    Comment({
        this.id,
        this.body,
        this.postId,
    });

    factory Comment.fromJson(Map<String, dynamic> json) => Comment(
        id: json["id"],
        body: json["body"],
        postId: json["postId"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "body": body,
        "postId": postId,
    };
}

class Post {
    int? id;
    String? title;

    Post({
        this.id,
        this.title,
    });

    factory Post.fromJson(Map<String, dynamic> json) => Post(
        id: json["id"],
        title: json["title"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
    };
}

class Profile {
    String? name;

    Profile({
        this.name,
    });

    factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
    };
}
