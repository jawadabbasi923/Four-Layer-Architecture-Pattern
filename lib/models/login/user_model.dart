import 'user.dart';

class UserModel {
  bool? success;
  User? data;
  String? message;

  UserModel({this.success, this.data, this.message});

  UserModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? User.fromJson(json['data']) : null;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = message;
    return data;
  }
}
