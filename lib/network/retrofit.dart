import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'retrofit.g.dart';

@RestApi(baseUrl: "https://randomuser.me/")
abstract class Retrofit {
  factory Retrofit(Dio dio, {String? baseUrl}) = _Retrofit;

  @GET("api/")
  Future<HttpResponse<dynamic>> getUsers(
      @Query("page") int page,
      @Query("results") int results,
  );


}
