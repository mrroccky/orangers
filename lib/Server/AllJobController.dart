import 'package:get/get.dart';
import 'package:orangers/Server/AllJobsModels.dart';
import 'package:orangers/Server/GetAllJobsServieses.dart';

class AllJobsController extends GetxController {
  List<AllJobsModel> AllJobs = (List<AllJobsModel>.of([])).obs;
  List get allJobs => AllJobs;

  var _isLoading = true;
  bool get isLoading => _isLoading;
  @override
  void onInit() {
    GetJobs();
    super.onInit();
  }

  void GetJobs() async {
    try {
      var allJobs = await GetAllJobsServises().GetJobs();

      if (allJobs != null) {
        AllJobs = allJobs;
        _isLoading = false;
        update();
      } else {}
    } finally {
      _isLoading = true;
      update();
    }
  }
}
