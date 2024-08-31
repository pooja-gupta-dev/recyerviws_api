// // To parse this JSON data, do
// //
// //     final modelClass = modelClassFromJson(jsonString);
//
// import 'dart:convert';
//
// ModelClass modelClassFromJson(String str) => ModelClass.fromJson(json.decode(str));
//
// String modelClassToJson(ModelClass data) => json.encode(data.toJson());
//
// class ModelClass {
//   String status;
//   int totalResults;
//   List<Article> articles;
//
//   ModelClass({
//     required this.status,
//     required this.totalResults,
//     required this.articles,
//   });
//
//   ModelClass copyWith({
//     String? status,
//     int? totalResults,
//     List<Article>? articles,
//   }) =>
//       ModelClass(
//         status: status ?? this.status,
//         totalResults: totalResults ?? this.totalResults,
//         articles: articles ?? this.articles,
//       );
//
//   factory ModelClass.fromJson(Map<String, dynamic> json) => ModelClass(
//     status: json["status"],
//     totalResults: json["totalResults"],
//     articles: List<Article>.from(json["articles"].map((x) => Article.fromJson(x))),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "status": status,
//     "totalResults": totalResults,
//     "articles": List<dynamic>.from(articles.map((x) => x.toJson())),
//   };
// }
//
// class Article {
//   Source source;
//   String? author;
//   String title;
//   String? description;
//   String url;
//   String? urlToImage;
//   DateTime publishedAt;
//   String content;
//
//   Article({
//     required this.source,
//     required this.author,
//     required this.title,
//     required this.description,
//     required this.url,
//     required this.urlToImage,
//     required this.publishedAt,
//     required this.content,
//   });
//
//   Article copyWith({
//     Source? source,
//     String? author,
//     String? title,
//     String? description,
//     String? url,
//     String? urlToImage,
//     DateTime? publishedAt,
//     String? content,
//   }) =>
//       Article(
//         source: source ?? this.source,
//         author: author ?? this.author,
//         title: title ?? this.title,
//         description: description ?? this.description,
//         url: url ?? this.url,
//         urlToImage: urlToImage ?? this.urlToImage,
//         publishedAt: publishedAt ?? this.publishedAt,
//         content: content ?? this.content,
//       );
//
//   factory Article.fromJson(Map<String, dynamic> json) => Article(
//     source: Source.fromJson(json["source"]),
//     author: json["author"],
//     title: json["title"],
//     description: json["description"],
//     url: json["url"],
//     urlToImage: json["urlToImage"],
//     publishedAt: DateTime.parse(json["publishedAt"]),
//     content: json["content"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "source": source.toJson(),
//     "author": author,
//     "title": title,
//     "description": description,
//     "url": url,
//     "urlToImage": urlToImage,
//     "publishedAt": publishedAt.toIso8601String(),
//     "content": content,
//   };
// }
//
// class Source {
//   String? id;
//   String name;
//
//   Source({
//     required this.id,
//     required this.name,
//   });
//
//   Source copyWith({
//     String? id,
//     String? name,
//   }) =>
//       Source(
//         id: id ?? this.id,
//         name: name ?? this.name,
//       );
//
//   factory Source.fromJson(Map<String, dynamic> json) => Source(
//     id: json["id"],
//     name: json["name"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "name": name,
//   };
// }

class ModelClass {
  final int id;
  final String email;
  final String firstName;
  final String lastName;
  final String avatar;

  ModelClass({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });

  factory ModelClass.fromJson(Map<String, dynamic> json) {
    return ModelClass(
      id: json['id'],
      email: json['email'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      avatar: json['avatar'],
    );
  }
}

