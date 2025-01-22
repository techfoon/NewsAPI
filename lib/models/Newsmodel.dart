class Newsmodel {
  List<ArticleModel>? articles;

  String? status;

  int? totalResults;

  Newsmodel({this.articles, this.status, this.totalResults});

  factory Newsmodel.fromJson(Map<String, dynamic> JSON) {
    List<ArticleModel> mArticles = [];

    for (Map<String, dynamic> singleArticle in JSON['articles']) {
      var ConvertedData = ArticleModel.fromJson(singleArticle);

      mArticles.add(ConvertedData);
    }

    return Newsmodel(
        articles: mArticles,
        status: JSON['status'],
        totalResults: JSON['totalResults']);
  }
}

class ArticleModel {
  String? author;

  String? content;
  String? description;

  String? publishedAt;

  SourceModel? source;

  String? title;

  String? url;

  String? urlToImage;

  ArticleModel(
      {this.author,
      this.content,
      this.description,
      this.publishedAt,
      this.source,
      this.title,
      this.url,
      this.urlToImage});

  factory ArticleModel.fromJson(Map<String, dynamic> JSON) {
    return ArticleModel(
        author: JSON['author'],
        content: JSON['content'],
        description: JSON['description'],
        publishedAt: JSON['publishedAt'],
        source: SourceModel.fromJson(JSON['source']),
        title: JSON['title'],
        url: JSON['url'],
        urlToImage: JSON['urlToImage']);
  }
}

class SourceModel {
  String? id;

  String? name;

  SourceModel({this.id, this.name});

  factory SourceModel.fromJson(Map<String, dynamic> JSON) {
    return SourceModel(id: JSON['id'], name: JSON['name']);
  }
}
