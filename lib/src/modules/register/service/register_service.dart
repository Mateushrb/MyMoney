import 'package:flutter/foundation.dart';
import 'package:my_money/src/modules/register/model/register_data_modal.dart';
import 'package:my_money/src/modules/register/repositories/register_repository.dart';

class RegisterService {
  final RegisterRepository repository = RegisterRepository();

  Future<bool> sendRegisterData(
    String name,
    String email,
    String password,
  ) async {
    try {
      RegisterDataModel registerData = RegisterDataModel(
        fullName: name,
        email: email,
        password: password,
      );

      await repository.sendRegisterData(registerData);
      return true;
    } catch (exception) {
      debugPrint(exception.toString());
      return false;
    }
  }
}
