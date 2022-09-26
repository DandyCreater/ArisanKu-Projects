class BankEntity {
  String? code;
  DataEntity? data;
  String? message;

  BankEntity({required this.code, required this.data, required this.message});
}

class DataEntity {
  List<ListsEntity>? lists;

  DataEntity({this.lists});
}

class ListsEntity {
  String? imageUrl;
  String? title;

  ListsEntity({this.imageUrl, this.title});
}
