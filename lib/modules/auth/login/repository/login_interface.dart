import 'package:flutter/material.dart';

import '../../registration/model/registration_response.dart';

@immutable
abstract class ILoginRepository {
  Future loginReq({
    required Map<String, dynamic> params,
    required Function(RegistrationResponse response) onSuccess,
  });
}
