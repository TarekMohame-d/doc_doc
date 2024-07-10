import 'package:dio/dio.dart';
import '../../../../core/networking/api_constants.dart';
import 'home_api_constants.dart';
import '../models/specializations_response_model.dart';
import 'package:retrofit/http.dart';

part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(HomeApiConstants.specialization)
  Future<SpecializationsResponseModel> getSpecialization();
}