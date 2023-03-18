import 'package:list_detail_demo/models/user.dart';

import '../models/user_model.dart';

UserData convertAPIResultToUser(Result result){
  UserData userData = UserData(
    gender: result.gender,
    name: Namef(
      title: result.name?.title,
      first: result.name?.first,
      last: result.name?.last,
    ),
    location: Locationf(
      street: Streetf(
        number: result.location?.street?.number,
        name: result.location?.street?.name,
      ),
      city: result.location?.city,
      state: result.location?.state,
      country: result.location?.country,
      postcode: result.location?.postcode.toString(),
      coordinates: Coordinatesf(
        latitude: result.location?.coordinates?.latitude,
        longitude: result.location?.coordinates?.longitude,
      ),
      timezone: Timezonef(
        offset: result.location?.timezone?.offset,
        description: result.location?.timezone?.description,
      ),
    ),
    email: result.email,
    login: Loginf(
      uuid: result.login?.uuid,
      username: result.login?.username,
      password: result.login?.password,
      salt: result.login?.salt,
      md5: result.login?.md5,
      sha1: result.login?.sha1,
      sha256: result.login?.sha256,
    ),
    dob: Dobf(
      date: result.dob?.date,
      age: result.dob?.age,
    ),
    registered: Dobf(
      date: result.registered?.date,
      age: result.registered?.age,
    ),
    phone: result.phone,
    cell: result.cell,
    id: Idf(name: result.id?.name, value: result.id?.value),
    picture: Picturef(
      large: result.picture?.large,
      medium: result.picture?.medium,
      thumbnail: result.picture?.thumbnail,
    ),
    nat: result.nat,
  );
  return userData;
}