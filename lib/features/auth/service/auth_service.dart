import 'package:aast_books_project/core/network/api_constants.dart';
import 'package:aast_books_project/core/network/api_result.dart';
import 'package:aast_books_project/core/network/app_exception.dart';
import 'package:aast_books_project/features/auth/data/model/login_response_model.dart';
import 'package:dio/dio.dart';

class AuthService {
  final Dio dio;

  AuthService(this.dio);

  Future<ApiResult> login(String username, String password) async {
    try {
      Response response = await dio.post(
        ApiConstant.loginEndPoint,
        data: {'username': username, 'password': password},
      );
      if (response.statusCode == 200) {
        Map<String, dynamic> data = response.data;
        return Success<LoginResponseModel>(
          data: LoginResponseModel.fromJson(data),
        );
      } else {
        return Failure(
          AppException(
            errorMessage: response.statusMessage ?? 'Invalid Response',
            errorCode: response.statusCode,
          ),
        );
      }
    } on DioException catch (e) {
      return Failure(AppException.fromDioException(e));
    } catch (e) {
      return Failure(AppException(errorMessage: e.toString()));
    }
  }
}
