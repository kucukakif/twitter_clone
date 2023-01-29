import 'dart:convert';

List<Tweet> tweetFromJson(String str) =>
    List<Tweet>.from(json.decode(str).map((x) => Tweet.fromJson(x)));

String tweetToJson(Tweet data) => json.encode(data.toJson());

class Tweet {
  Tweet({
    this.id,
    this.name,
    this.gmail,
    this.time,
    this.text,
    this.heshetk,
    this.likeCount,
    this.retweetCoumt,
    this.commentCount,
  });

  int? id;
  String? name;
  String? gmail;
  String? time;
  String? text;
  String? heshetk;
  int? likeCount;
  int? retweetCoumt;
  int? commentCount;

  factory Tweet.fromJson(Map<String, dynamic> json) => Tweet(
        id: json["id"],
        name: json["name"],
        gmail: json["gmail"],
        time: json["time"],
        text: json["Text"],
        heshetk: json["Heshetk"],
        likeCount: json["LikeCount"],
        retweetCoumt: json["RetweetCoumt"],
        commentCount: json["CommentCount"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "gmail": gmail,
        "time": time,
        "Text": text,
        "Heshetk": heshetk,
        "LikeCount": likeCount,
        "RetweetCoumt": retweetCoumt,
        "CommentCount": commentCount,
      };
}
