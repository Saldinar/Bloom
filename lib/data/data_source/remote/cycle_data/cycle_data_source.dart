import 'package:bloom/data/dto/requests/cycle_request/cycle_request.dart';
import 'package:bloom/data/dto/responses/cycle_response/cycle_response.dart';
import 'package:bloom/data/dto/responses/phases_response/phases_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'cycle_data_source.g.dart';

@RestApi()
@singleton
abstract class UserService {
  @factoryMethod
  factory UserService(Dio dio) = _UserService;

  @GET('/api/user/me/')
  Future<HttpResponse<UserResponse>> getCurrentUser(CycleRequest request);

  @GET('/api/user/phases/')
  Future<HttpResponse<PhasesResponse>> getPhases();
}
