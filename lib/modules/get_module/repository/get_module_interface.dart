import 'package:api_test/modules/get_module/model/get_response.dart';
import 'package:flutter/material.dart';

@immutable
abstract class IGetModuleRepository {
  Future fetGetData({
    required Function(GetResponse getResponse) onSuccess,
  });
}
