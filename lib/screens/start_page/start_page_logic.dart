import 'package:get/get.dart';
import '../../app/services/local_storage/cache_services_with_sharedpreferences.dart';
import '../../data/enums/app_state_enum.dart';
import '../../data/repositories/users_repositories.dart';
import '../../data/enums/loading_state_enum.dart';

class StartPageBinging extends Bindings {
  @override
  void dependencies() {
    Get.put(StartPageController());
  }
}

class StartPageController extends GetxController {
  final isConnectedPage = true.obs;
  final AuthRepositories = Get.find<ImpUsersRepositories>();
  final cache = Get.find<CacheServicesSharedPreferences>();
  var loadingState = LoadingState.idle.obs;
  var appState = AppState.run.obs;

  startApp() async {}
}
