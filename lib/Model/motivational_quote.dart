import 'dart:convert';

class MotivationalQuote {
  List<Quote>? quotes;
  int? total;
  int? skip;
  int? limit;

  MotivationalQuote({
    this.quotes,
    this.total,
    this.skip,
    this.limit,
  });

  MotivationalQuote copyWith({
    List<Quote>? quotes,
    int? total,
    int? skip,
    int? limit,
  }) =>
      MotivationalQuote(
        quotes: quotes ?? this.quotes,
        total: total ?? this.total,
        skip: skip ?? this.skip,
        limit: limit ?? this.limit,
      );

  factory MotivationalQuote.fromRawJson(String str) =>
      MotivationalQuote.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MotivationalQuote.fromJson(Map<String, dynamic> json) =>
      MotivationalQuote(
        quotes: json["quotes"] == null
            ? []
            : List<Quote>.from(json["quotes"]!.map((x) => Quote.fromJson(x))),
        total: json["total"],
        skip: json["skip"],
        limit: json["limit"],
      );

  Map<String, dynamic> toJson() => {
        "quotes": quotes == null
            ? []
            : List<dynamic>.from(quotes!.map((x) => x.toJson())),
        "total": total,
        "skip": skip,
        "limit": limit,
      };

  map(Function(dynamic e) param0) {}
}

class Quote {
  int? id;
  String? quote;
  String? author;

  Quote({
    this.id,
    this.quote,
    this.author,
  });

  Quote copyWith({
    int? id,
    String? quote,
    String? author,
  }) =>
      Quote(
        id: id ?? this.id,
        quote: quote ?? this.quote,
        author: author ?? this.author,
      );

  factory Quote.fromRawJson(String str) => Quote.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Quote.fromJson(Map<String, dynamic> json) => Quote(
        id: json["id"],
        quote: json["quote"],
        author: json["author"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "quote": quote,
        "author": author,
      };
}
