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
      nome: map['nome'] as String,
      url: map['url'] as String,
      thumbUrl: map['thumbUrl'] as String,
      descricao: map['descricao'] as String,
      createdAt: map['createdAt'] as String,
      duracao: map['duracao'] as String,
      dataPublicacao: map['dataPublicacao'] as String,
      topico: map['topico'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory VideosModel.fromJson(String source) =>
      VideosModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'VideosModel(id: $id, nome: $nome, url: $url, thumbUrl: $thumbUrl, descricao: $descricao, createdAt: $createdAt, duracao: $duracao, dataPublicacao: $dataPublicacao, topico: $topico)';
  }
}
