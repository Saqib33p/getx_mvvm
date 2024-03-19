import 'package:getx_mvvm/data/network/network_api_services.dart';
import 'package:getx_mvvm/res/app_url/app_url.dart';

class LoginRepository {
  final _apiServices = NetworApiServices();

  Future<dynamic> loginApi(var data) async {
    dynamic response =
        await _apiServices.getPostApiResponse(AppUrl.loginApi, data);
    return response;
  }
}
