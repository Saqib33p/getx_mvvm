import 'package:getx_mvvm/data/network/network_api_services.dart';
import 'package:getx_mvvm/models/cart_model/cart_model.dart';
import 'package:getx_mvvm/res/app_url/app_url.dart';

class CartRepository {
  final _apiServices = NetworApiServices();

  Future<UserListModel> UserListApi() async {
    dynamic response = await _apiServices.getGetApiResponse(
      AppUrl.userlistapi,
    );
    return UserListModel.fromJson(response);
  }
}
