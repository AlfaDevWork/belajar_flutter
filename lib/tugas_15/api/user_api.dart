import 'package:belajar_flutter/tugas_15/endpoint.dart';
import 'package:belajar_flutter/tugas_15/model/profile/no_token.dart';
import 'package:belajar_flutter/tugas_15/model/profile/profile.dart';
import 'package:belajar_flutter/tugas_15/model/register/register_error_params_response.dart';
import 'package:belajar_flutter/tugas_15/model/register/register_response.dart';
import 'package:belajar_flutter/tugas_15/model/update/edit_error_response.dart';
import 'package:belajar_flutter/tugas_15/model/update/edit_response.dart';
import 'package:belajar_flutter/tugas_15/services/preference.dart';
import 'package:http/http.dart' as http;

class UserService {
  Future<Map<String, dynamic>> registerUser({
    required String email,
    required String name,
    required String password,
  }) async {
    final response = await http.post(
      Uri.parse(Endpoint.register),
      headers: {"Accept": "application/json"},
      body: {"name": name, "email": email, "password": password},
    );
    if (response.statusCode == 200) {
      return registerResponseFromJson(response.body).toJson();
    } else if (response.statusCode == 422) {
      return registerErrorParamsResponseFromJson(response.body).toJson();
    } else {
      throw Exception("Gagal mendaftarkan pengguna: ${response.statusCode}");
    }
  }

  Future<Map<String, dynamic>> loginUser({
    required String email,
    required String password,
  }) async {
    final response = await http.post(
      Uri.parse(Endpoint.login),
      headers: {"Accept": "application/json"},
      body: {"email": email, "password": password},
    );
    if (response.statusCode == 200) {
      return registerResponseFromJson(response.body).toJson();
    } else if (response.statusCode == 422) {
      return registerErrorParamsResponseFromJson(response.body).toJson();
    } else {
      return {'errors': true, 'message': "Login gagal: ${response.statusCode}"};
    }
  }

  Future<Map<String, dynamic>> getUser() async {
    String? token = await SharedPreference.getAuthToken();
    final response = await http.get(
      Uri.parse(Endpoint.profile),
      headers: {"Accept": "application/json", "Authorization": "bearer $token"},
    );

    if (response.statusCode == 200) {
      print(profileResponsesFromJson(response.body).toJson());
      return profileResponsesFromJson(response.body).toJson();
    } else if (response.statusCode == 422) {
      return noTokenResponsesFromJson(response.body).toJson();
    } else {
      throw Exception("Gagal mengambil data pengguna: ${response.statusCode}");
    }
  }

  Future<Map<String, dynamic>> updateUser({required String name}) async {
    String? token = await SharedPreference.getAuthToken();
    final response = await http.put(
      Uri.parse(Endpoint.profile),
      headers: {"Accept": "application/json", "Authorization": "bearer $token"},
      body: {"name": name},
    );

    if (response.statusCode == 200) {
      return editProfileResponsesFromJson(response.body).toJson();
    } else if (response.statusCode == 422) {
      return errorProfileResponsesFromJson(response.body).toJson();
    } else {
      throw Exception("Gagal mengupdate data pengguna: ${response.statusCode}");
    }
  }

  Future<Map<String, dynamic>> deleteUser() async {
    String? token = await SharedPreference.getAuthToken();
    final response = await http.delete(
      Uri.parse(Endpoint.profile),
      headers: {"Accept": "application/json", "Authorization": "bearer $token"},
    );

    if (response.statusCode == 200) {
      return editProfileResponsesFromJson(response.body).toJson();
    } else if (response.statusCode == 422) {
      return errorProfileResponsesFromJson(response.body).toJson();
    } else {
      throw Exception("Gagal mengupdate data pengguna: ${response.statusCode}");
    }
  }
}
