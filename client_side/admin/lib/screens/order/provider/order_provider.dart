import 'dart:developer';

import 'package:get/get_connect/http/src/response/response.dart';

import '../../../models/api_response.dart';
import '../../../models/order.dart';
import '../../../services/http_services.dart';
import 'package:flutter/cupertino.dart';
import '../../../core/data/data_provider.dart';
import '../../../utility/snack_bar_helper.dart';


class OrderProvider extends ChangeNotifier {
  HttpService service = HttpService();
  final DataProvider _dataProvider;
  final orderFormKey = GlobalKey<FormState>();
  TextEditingController trackingUrlCtrl = TextEditingController();
  String selectedOrderStatus = 'pending';
  Order? orderForUpdate;

  OrderProvider(this._dataProvider);

  updateOrder() async {
    try {
      if (orderForUpdate != null) {
        Map<String, dynamic> order = {
          'trackingUrl': trackingUrlCtrl.text, 'orderStatus': selectedOrderStatus
        };

        final response = await service.updateItem(
            endpointUrl: 'orders', itemData: order, itemId: orderForUpdate?.sId ?? '');
        if (response.isOk) {
          ApiResponse apiResponse = ApiResponse.fromJson(response.body, null);
          if (apiResponse.success == true) {
            SnackBarHelper.showSuccessSnackBar('${apiResponse.message}');
            log('Order Updated');
            _dataProvider.getAllOrders();
          }
          else {
            SnackBarHelper.showErrorSnackBar(
                'Failed to add Order: ${apiResponse.message}');
          }
        }
        else {
          SnackBarHelper.showErrorSnackBar(
              'Error ${response.body?['message'] ?? response.statusText}');
        }
      }
    }
    catch (e) {
      print(e);
      SnackBarHelper.showErrorSnackBar('An error occurred: $e');
      rethrow;
    }
  }


  deleteOrder(Order order) async {
    try {
      Response response = await service.deleteItem(
          endpointUrl: 'oredrs', itemId: order.sId ?? '');
      if (response.isOk) {
        ApiResponse apiResponse = ApiResponse.fromJson(response.body, null);
        if (apiResponse.success == true) {
          SnackBarHelper.showSuccessSnackBar('Order Deleted Successfully');
          _dataProvider.getAllOrders();
        }
        else {
          SnackBarHelper.showErrorSnackBar(
              'Error ${response.body?['message'] ?? response.statusText}');
        }
      }
    }
    catch (e) {
      print(e);
      rethrow;
    }
  }


  updateUI() {
    notifyListeners();
  }
}
