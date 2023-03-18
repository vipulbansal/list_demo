import 'package:realm/realm.dart';
part 'user.g.dart';

@RealmModel()
class _UserData {
  String? gender;
  _Namef? name;
  _Locationf? location;
  String? email;
  _Loginf? login;
  _Dobf? dob;
  _Dobf? registered;
  String? phone;
  String? cell;
  _Idf? id;
  _Picturef? picture;
  String? nat;


}

@RealmModel((ObjectType.embeddedObject))
class _Dobf {


  DateTime? date;
  int? age;


}

@RealmModel((ObjectType.embeddedObject))
class _Idf {


  String? name;
  String? value;


}

@RealmModel((ObjectType.embeddedObject))
class _Locationf {

  _Streetf? street;
  String? city;
  String? state;
  String? country;
  String? postcode;
  _Coordinatesf? coordinates;
  _Timezonef? timezone;


}

@RealmModel((ObjectType.embeddedObject))
class _Coordinatesf {


  String? latitude;
  String? longitude;


}

@RealmModel((ObjectType.embeddedObject))
class _Streetf {


  int? number;
  String? name;


}

@RealmModel((ObjectType.embeddedObject))
class _Timezonef {

  String? offset;
  String? description;


}

@RealmModel((ObjectType.embeddedObject))
class _Loginf {


  String? uuid;
  String? username;
  String? password;
  String? salt;
  String? md5;
  String? sha1;
  String? sha256;


}

@RealmModel((ObjectType.embeddedObject))
class _Namef {


  String? title;
  String? first;
  String? last;


}

@RealmModel((ObjectType.embeddedObject))
class _Picturef {


  String? large;
  String? medium;
  String? thumbnail;


}
