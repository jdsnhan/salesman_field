import 'dart:io';
import 'dart:convert';
import '../models/customer.dart';

class CustomerAPI {
  Future<Customer> getCustomerList(int start) async {
    var client = HttpClient();
    var request = await client.getUrl(Uri.parse(
        'http://10.0.65.171:8180/dataQuery/getCustomerListApi.do?title=%E5%86%80%E4%B8%9C&time=699&page=1&start=0&limit=20'));
    var response = await request.close();
    var responseBody = await response.transform(utf8.decoder).join();
    Map<String,Object> data = json.decode(responseBody);
    // print(data['rows']);
    return Customer.fromJSON(data);
  }
}