import 'package:get/get.dart';
import '../models/data_model.dart';
import '../services/api_services.dart';

class DataController extends GetxController {
  var users = <User>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchUsers();
    super.onInit();
  }

  void fetchUsers() async {
    try {
      isLoading(true);
      var userData = await APIService().fetchUsers();
      users.value = userData;
    } finally {
      isLoading(false);
    }
  }
}
