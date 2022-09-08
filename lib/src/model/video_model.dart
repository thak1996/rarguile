import 'dart:convert';

class VideosModel {
  final String id;
  final String nome;
  final String url;
  final String thumbUrl;
  final String descricao;
  final String createdAt;
  final String duracao;
  final String dataPublicacao;
  final String topico;

  VideosModel({
    required this.id,
    required this.nome,
    required this.url,
    required this.thumbUrl,
    required this.descricao,
    required this.createdAt,
    required this.duracao,
    required this.dataPublicacao,
    required this.topico,
  });

  factory VideosModel.fromJson(Map<String, dynamic> map) {
    return VideosModel(
      id: map['id'],
      nome: map['nome'],
      url: map['url'],
      thumbUrl: map['thumbUrl'],
      descricao: map['descricao'],
      createdAt: map['createdAt'],
      duracao: map['duracao'],
      dataPublicacao: map['dataPublicacao'],
      topico: map['topico'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['nome'] = nome;
    data['url'] = url;
    data['thumbUrl'] = thumbUrl;
    data['descricao'] = descricao;
    data['createdAt'] = createdAt;
    data['duracao'] = duracao;
    data['dataPublicacao'] = dataPublicacao;
    data['topico'] = topico;
    return data;
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nome': nome,
      'url': url,
      'thumbUrl': thumbUrl,
      'descricao': descricao,
      'createdAt': createdAt,
      'duracao': duracao,
      'dataPublicacao': dataPublicacao,
      'topico': topico,
    };
  }

  factory VideosModel.fromMap(Map<String, dynamic> map) {
    return VideosModel(
      id: map['id'] as String,
      nome: map['nome'],
      url: map['url'],
      thumbUrl: map['thumbUrl'] as String,
      descricao: map['descricao'] as String,
      createdAt: map['createdAt'] as String,
      duracao: map['duracao'] as String,
      dataPublicacao: map['dataPublicacao'] as String,
      topico: map['topico'] as String,
    );
  }

  @override
  String toString() {
    return 'VideosModel(id: $id, nome: $nome, url: $url, thumbUrl: $thumbUrl, descricao: $descricao, createdAt: $createdAt, duracao: $duracao, dataPublicacao: $dataPublicacao, topico: $topico)';
  }
}
