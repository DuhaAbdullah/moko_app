import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:moko_app/data/api/api_client.dart';
import 'package:moko_app/utils/app_constants.dart';

class PopularProductRepo extends GetxService {
  PopularProductRepo({required this.apiClient});
  final ApiClient apiClient;

  Future<Response> getPopularProductList() async {
    return await apiClient.getData(AppConstants.popularProductUrl);
  }

}
