import 'dart:convert';

import 'package:arisanku/data/model/BankDataResponseModel.dart';
import 'package:arisanku/data/utils/resource/Model.dart';
import 'package:flutter/services.dart';

abstract class RemoteLocalSource {
  Future GetBankData();
}

class RemoteLocalSourceImpl implements RemoteLocalSource {
  Future GetBankData() async {
    final jsonData = await rootBundle.loadString('assets/json/bank.json');
    final decodeData = jsonDecode(jsonData);
    print(decodeData);
    return BankDataResponseModel.fromJson(decodeData);
  }
}
