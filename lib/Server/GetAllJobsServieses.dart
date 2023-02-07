import 'package:http/http.dart' as http;
import 'package:orangers/Server/AllJobsModels.dart';

class GetAllJobsServises {
  // static const String getCorses = "http://localhost/oncrring/jobs.php";
  static const String getCorses =
      "https://saynadb.000webhostapp.com/oncrring/jobs.php";
  Future<List<AllJobsModel>?> GetJobs() async {
    var responce = await http.get(Uri.parse(getCorses), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Origin': 'https://orangers.vercel.app/',
    });
    if (responce.statusCode == 200) {
      print("🚀🚀👌");
      // print(responce.body.toString());
      var jsonString = responce.body;
      return allJobsModelFromJson(jsonString);
    } else {
      print("😞❌");
      return null;
    }
  }
}
