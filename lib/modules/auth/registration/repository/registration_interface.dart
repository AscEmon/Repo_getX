import 'package:api_test/modules/auth/registration/model/registration_response.dart';
import 'package:flutter/material.dart';

@immutable
abstract class IRegistrationRepository {
  Future registrationReq({
    required Map<String, dynamic> params,
    required Function(RegistrationResponse response) onSuccess,
  });
}
