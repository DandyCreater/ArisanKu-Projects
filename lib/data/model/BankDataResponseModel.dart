// ignore_for_file: unnecessary_this

import 'package:arisanku/data/utils/resource/model.dart';
import 'package:arisanku/domain/entities/BankEntity.dart';

class BankDataResponseModel {
  String? code;
  Data? datas;
  String? message;

  BankDataResponseModel.fromJson(Map<String, dynamic> data) {
    code = data['code'];
    datas = data['data'] != null ? new Data.fromJson(data['data']) : null;
    message = data['message'];
  }

  BankEntity toEntity() {
    return BankEntity(
      code: this.code,
      data: this.datas != null ? this.datas!.toEntity() : null,
      message: this.message,
    );
  }

  // @override
  // void fromJson(Map<String, dynamic> data) {
  //   // TODO: implement fromJson
  // }
}

class Data {
  List<Lists>? lists;

  Data({this.lists});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['lists'] != null) {
      lists = <Lists>[];
      json['lists'].forEach((v) {
        lists!.add(new Lists.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.lists != null) {
      data['lists'] = this.lists!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  DataEntity toEntity() {
    return DataEntity(
        lists: this.lists != null
            ? this.lists!.map((e) => e.toEntity()).toList()
            : null);
  }
}

class Lists {
  String? imageUrl;
  String? title;

  Lists({this.imageUrl, this.title});

  Lists.fromJson(Map<String, dynamic> json) {
    imageUrl = json['imageUrl'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imageUrl'] = this.imageUrl;
    data['title'] = this.title;
    return data;
  }

  ListsEntity toEntity() {
    return ListsEntity(imageUrl: this.imageUrl, title: this.title);
  }
}
