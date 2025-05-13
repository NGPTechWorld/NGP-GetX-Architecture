import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ngpiteapp/app/config/string_manager.dart';
import 'package:ngpiteapp/app/services/connection/network_info.dart';
import 'package:ngpiteapp/app/services/local_storage/cache_services.dart';
import 'package:ngpiteapp/app/services/local_storage/cache_services_with_sharedpreferences.dart';
import 'package:ngpiteapp/data/entities/login_entitie.dart';
import 'package:ngpiteapp/data/enums/loading_state_enum.dart';
import 'package:ngpiteapp/data/repositories/users_repositories.dart';
import 'package:ngpiteapp/screens/custom_widgets/helper_widget.dart';
import 'package:ngpiteapp/screens/custom_widgets/snack_bar_error.dart';
import 'package:ngpiteapp/screens/login_page/login_page.dart';

class LoginPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LoginPageController(), permanent: true);
  }
}

class LoginPageController extends GetxController {
  final numberPhoneController = TextEditingController();
  final passwordController = TextEditingController();
  final AuthRepositories = Get.find<ImpUsersRepositories>();
  final cache = Get.find<CacheServicesSharedPreferences>();
  final netCheck = Get.find<NetworkInfoImpl>();
  var loadingState = LoadingState.idle.obs;
  final isVisablePass = true.obs;

  login(BuildContext context) async {
    loadingState.value = LoadingState.loading;
    String? fcm = await cache.getFcmToken();
    final response = await AuthRepositories.login(
        number: numberPhoneController.text,
        password: passwordController.text,
        fcm: fcm);
    if (response.success) {
      final data = response.data as LoginEntitie;
      numberPhoneController.text = passwordController.text = "";
      if (data.message == "user not verified , verification code sent") {
        SnackBarCustom.show(context, data.message);
        loadingState.value = LoadingState.doneWithData;
        //Go OTP
      } else {
        final saveState =
            await cache.saveData(kUserTokenKey, response.data.bearerToken);
        if (saveState) {
          SnackBarCustom.show(context, "StringManager.loginSuccess.tr");
          loadingState.value = LoadingState.doneWithData;
          // Go Home
        }
      }
    } else {
      SnackBarCustom.show(context, response.networkFailure!.message);
      // if (response.networkFailure!.message == "user has not been verified")
      //   //Get.off(() => OtpPage(), binding: OtpPageBinding());
      loadingState.value = LoadingState.hasError;
    }
  }

  goToSignUp() {
    // goToSignUp
  }

  languageOnTap() {
    // HelperWidget.languageDialgo("auth");
  }
}
