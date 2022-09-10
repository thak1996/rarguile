import 'package:rarguile/src/model/videos_model.dart';

conditionDisplayVideo(VideosModel videoModel, String searchtext) {
  return searchtext.isEmpty ||
      videoModel.descricao.toLowerCase().contains(searchtext.toLowerCase()) ||
      videoModel.nome.toLowerCase().contains(searchtext.toLowerCase()) ||
      videoModel.topico.toLowerCase().startsWith(searchtext.toLowerCase());
}
