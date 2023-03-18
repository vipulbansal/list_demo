// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class UserData extends _UserData
    with RealmEntity, RealmObjectBase, RealmObject {
  UserData({
    String? gender,
    Namef? name,
    Locationf? location,
    String? email,
    Loginf? login,
    Dobf? dob,
    Dobf? registered,
    String? phone,
    String? cell,
    Idf? id,
    Picturef? picture,
    String? nat,
  }) {
    RealmObjectBase.set(this, 'gender', gender);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'location', location);
    RealmObjectBase.set(this, 'email', email);
    RealmObjectBase.set(this, 'login', login);
    RealmObjectBase.set(this, 'dob', dob);
    RealmObjectBase.set(this, 'registered', registered);
    RealmObjectBase.set(this, 'phone', phone);
    RealmObjectBase.set(this, 'cell', cell);
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'picture', picture);
    RealmObjectBase.set(this, 'nat', nat);
  }

  UserData._();

  @override
  String? get gender => RealmObjectBase.get<String>(this, 'gender') as String?;
  @override
  set gender(String? value) => RealmObjectBase.set(this, 'gender', value);

  @override
  Namef? get name => RealmObjectBase.get<Namef>(this, 'name') as Namef?;
  @override
  set name(covariant Namef? value) => RealmObjectBase.set(this, 'name', value);

  @override
  Locationf? get location =>
      RealmObjectBase.get<Locationf>(this, 'location') as Locationf?;
  @override
  set location(covariant Locationf? value) =>
      RealmObjectBase.set(this, 'location', value);

  @override
  String? get email => RealmObjectBase.get<String>(this, 'email') as String?;
  @override
  set email(String? value) => RealmObjectBase.set(this, 'email', value);

  @override
  Loginf? get login => RealmObjectBase.get<Loginf>(this, 'login') as Loginf?;
  @override
  set login(covariant Loginf? value) =>
      RealmObjectBase.set(this, 'login', value);

  @override
  Dobf? get dob => RealmObjectBase.get<Dobf>(this, 'dob') as Dobf?;
  @override
  set dob(covariant Dobf? value) => RealmObjectBase.set(this, 'dob', value);

  @override
  Dobf? get registered =>
      RealmObjectBase.get<Dobf>(this, 'registered') as Dobf?;
  @override
  set registered(covariant Dobf? value) =>
      RealmObjectBase.set(this, 'registered', value);

  @override
  String? get phone => RealmObjectBase.get<String>(this, 'phone') as String?;
  @override
  set phone(String? value) => RealmObjectBase.set(this, 'phone', value);

  @override
  String? get cell => RealmObjectBase.get<String>(this, 'cell') as String?;
  @override
  set cell(String? value) => RealmObjectBase.set(this, 'cell', value);

  @override
  Idf? get id => RealmObjectBase.get<Idf>(this, 'id') as Idf?;
  @override
  set id(covariant Idf? value) => RealmObjectBase.set(this, 'id', value);

  @override
  Picturef? get picture =>
      RealmObjectBase.get<Picturef>(this, 'picture') as Picturef?;
  @override
  set picture(covariant Picturef? value) =>
      RealmObjectBase.set(this, 'picture', value);

  @override
  String? get nat => RealmObjectBase.get<String>(this, 'nat') as String?;
  @override
  set nat(String? value) => RealmObjectBase.set(this, 'nat', value);

  @override
  Stream<RealmObjectChanges<UserData>> get changes =>
      RealmObjectBase.getChanges<UserData>(this);

  @override
  UserData freeze() => RealmObjectBase.freezeObject<UserData>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(UserData._);
    return const SchemaObject(ObjectType.realmObject, UserData, 'UserData', [
      SchemaProperty('gender', RealmPropertyType.string, optional: true),
      SchemaProperty('name', RealmPropertyType.object,
          optional: true, linkTarget: 'Namef'),
      SchemaProperty('location', RealmPropertyType.object,
          optional: true, linkTarget: 'Locationf'),
      SchemaProperty('email', RealmPropertyType.string, optional: true),
      SchemaProperty('login', RealmPropertyType.object,
          optional: true, linkTarget: 'Loginf'),
      SchemaProperty('dob', RealmPropertyType.object,
          optional: true, linkTarget: 'Dobf'),
      SchemaProperty('registered', RealmPropertyType.object,
          optional: true, linkTarget: 'Dobf'),
      SchemaProperty('phone', RealmPropertyType.string, optional: true),
      SchemaProperty('cell', RealmPropertyType.string, optional: true),
      SchemaProperty('id', RealmPropertyType.object,
          optional: true, linkTarget: 'Idf'),
      SchemaProperty('picture', RealmPropertyType.object,
          optional: true, linkTarget: 'Picturef'),
      SchemaProperty('nat', RealmPropertyType.string, optional: true),
    ]);
  }
}

class Dobf extends _Dobf with RealmEntity, RealmObjectBase, EmbeddedObject {
  Dobf({
    DateTime? date,
    int? age,
  }) {
    RealmObjectBase.set(this, 'date', date);
    RealmObjectBase.set(this, 'age', age);
  }

  Dobf._();

  @override
  DateTime? get date =>
      RealmObjectBase.get<DateTime>(this, 'date') as DateTime?;
  @override
  set date(DateTime? value) => RealmObjectBase.set(this, 'date', value);

  @override
  int? get age => RealmObjectBase.get<int>(this, 'age') as int?;
  @override
  set age(int? value) => RealmObjectBase.set(this, 'age', value);

  @override
  Stream<RealmObjectChanges<Dobf>> get changes =>
      RealmObjectBase.getChanges<Dobf>(this);

  @override
  Dobf freeze() => RealmObjectBase.freezeObject<Dobf>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Dobf._);
    return const SchemaObject(ObjectType.embeddedObject, Dobf, 'Dobf', [
      SchemaProperty('date', RealmPropertyType.timestamp, optional: true),
      SchemaProperty('age', RealmPropertyType.int, optional: true),
    ]);
  }
}

class Idf extends _Idf with RealmEntity, RealmObjectBase, EmbeddedObject {
  Idf({
    String? name,
    String? value,
  }) {
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'value', value);
  }

  Idf._();

  @override
  String? get name => RealmObjectBase.get<String>(this, 'name') as String?;
  @override
  set name(String? value) => RealmObjectBase.set(this, 'name', value);

  @override
  String? get value => RealmObjectBase.get<String>(this, 'value') as String?;
  @override
  set value(String? value) => RealmObjectBase.set(this, 'value', value);

  @override
  Stream<RealmObjectChanges<Idf>> get changes =>
      RealmObjectBase.getChanges<Idf>(this);

  @override
  Idf freeze() => RealmObjectBase.freezeObject<Idf>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Idf._);
    return const SchemaObject(ObjectType.embeddedObject, Idf, 'Idf', [
      SchemaProperty('name', RealmPropertyType.string, optional: true),
      SchemaProperty('value', RealmPropertyType.string, optional: true),
    ]);
  }
}

class Locationf extends _Locationf
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  Locationf({
    Streetf? street,
    String? city,
    String? state,
    String? country,
    String? postcode,
    Coordinatesf? coordinates,
    Timezonef? timezone,
  }) {
    RealmObjectBase.set(this, 'street', street);
    RealmObjectBase.set(this, 'city', city);
    RealmObjectBase.set(this, 'state', state);
    RealmObjectBase.set(this, 'country', country);
    RealmObjectBase.set(this, 'postcode', postcode);
    RealmObjectBase.set(this, 'coordinates', coordinates);
    RealmObjectBase.set(this, 'timezone', timezone);
  }

  Locationf._();

  @override
  Streetf? get street =>
      RealmObjectBase.get<Streetf>(this, 'street') as Streetf?;
  @override
  set street(covariant Streetf? value) =>
      RealmObjectBase.set(this, 'street', value);

  @override
  String? get city => RealmObjectBase.get<String>(this, 'city') as String?;
  @override
  set city(String? value) => RealmObjectBase.set(this, 'city', value);

  @override
  String? get state => RealmObjectBase.get<String>(this, 'state') as String?;
  @override
  set state(String? value) => RealmObjectBase.set(this, 'state', value);

  @override
  String? get country =>
      RealmObjectBase.get<String>(this, 'country') as String?;
  @override
  set country(String? value) => RealmObjectBase.set(this, 'country', value);

  @override
  String? get postcode =>
      RealmObjectBase.get<String>(this, 'postcode') as String?;
  @override
  set postcode(String? value) => RealmObjectBase.set(this, 'postcode', value);

  @override
  Coordinatesf? get coordinates =>
      RealmObjectBase.get<Coordinatesf>(this, 'coordinates') as Coordinatesf?;
  @override
  set coordinates(covariant Coordinatesf? value) =>
      RealmObjectBase.set(this, 'coordinates', value);

  @override
  Timezonef? get timezone =>
      RealmObjectBase.get<Timezonef>(this, 'timezone') as Timezonef?;
  @override
  set timezone(covariant Timezonef? value) =>
      RealmObjectBase.set(this, 'timezone', value);

  @override
  Stream<RealmObjectChanges<Locationf>> get changes =>
      RealmObjectBase.getChanges<Locationf>(this);

  @override
  Locationf freeze() => RealmObjectBase.freezeObject<Locationf>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Locationf._);
    return const SchemaObject(
        ObjectType.embeddedObject, Locationf, 'Locationf', [
      SchemaProperty('street', RealmPropertyType.object,
          optional: true, linkTarget: 'Streetf'),
      SchemaProperty('city', RealmPropertyType.string, optional: true),
      SchemaProperty('state', RealmPropertyType.string, optional: true),
      SchemaProperty('country', RealmPropertyType.string, optional: true),
      SchemaProperty('postcode', RealmPropertyType.string, optional: true),
      SchemaProperty('coordinates', RealmPropertyType.object,
          optional: true, linkTarget: 'Coordinatesf'),
      SchemaProperty('timezone', RealmPropertyType.object,
          optional: true, linkTarget: 'Timezonef'),
    ]);
  }
}

class Coordinatesf extends _Coordinatesf
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  Coordinatesf({
    String? latitude,
    String? longitude,
  }) {
    RealmObjectBase.set(this, 'latitude', latitude);
    RealmObjectBase.set(this, 'longitude', longitude);
  }

  Coordinatesf._();

  @override
  String? get latitude =>
      RealmObjectBase.get<String>(this, 'latitude') as String?;
  @override
  set latitude(String? value) => RealmObjectBase.set(this, 'latitude', value);

  @override
  String? get longitude =>
      RealmObjectBase.get<String>(this, 'longitude') as String?;
  @override
  set longitude(String? value) => RealmObjectBase.set(this, 'longitude', value);

  @override
  Stream<RealmObjectChanges<Coordinatesf>> get changes =>
      RealmObjectBase.getChanges<Coordinatesf>(this);

  @override
  Coordinatesf freeze() => RealmObjectBase.freezeObject<Coordinatesf>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Coordinatesf._);
    return const SchemaObject(
        ObjectType.embeddedObject, Coordinatesf, 'Coordinatesf', [
      SchemaProperty('latitude', RealmPropertyType.string, optional: true),
      SchemaProperty('longitude', RealmPropertyType.string, optional: true),
    ]);
  }
}

class Streetf extends _Streetf
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  Streetf({
    int? number,
    String? name,
  }) {
    RealmObjectBase.set(this, 'number', number);
    RealmObjectBase.set(this, 'name', name);
  }

  Streetf._();

  @override
  int? get number => RealmObjectBase.get<int>(this, 'number') as int?;
  @override
  set number(int? value) => RealmObjectBase.set(this, 'number', value);

  @override
  String? get name => RealmObjectBase.get<String>(this, 'name') as String?;
  @override
  set name(String? value) => RealmObjectBase.set(this, 'name', value);

  @override
  Stream<RealmObjectChanges<Streetf>> get changes =>
      RealmObjectBase.getChanges<Streetf>(this);

  @override
  Streetf freeze() => RealmObjectBase.freezeObject<Streetf>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Streetf._);
    return const SchemaObject(ObjectType.embeddedObject, Streetf, 'Streetf', [
      SchemaProperty('number', RealmPropertyType.int, optional: true),
      SchemaProperty('name', RealmPropertyType.string, optional: true),
    ]);
  }
}

class Timezonef extends _Timezonef
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  Timezonef({
    String? offset,
    String? description,
  }) {
    RealmObjectBase.set(this, 'offset', offset);
    RealmObjectBase.set(this, 'description', description);
  }

  Timezonef._();

  @override
  String? get offset => RealmObjectBase.get<String>(this, 'offset') as String?;
  @override
  set offset(String? value) => RealmObjectBase.set(this, 'offset', value);

  @override
  String? get description =>
      RealmObjectBase.get<String>(this, 'description') as String?;
  @override
  set description(String? value) =>
      RealmObjectBase.set(this, 'description', value);

  @override
  Stream<RealmObjectChanges<Timezonef>> get changes =>
      RealmObjectBase.getChanges<Timezonef>(this);

  @override
  Timezonef freeze() => RealmObjectBase.freezeObject<Timezonef>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Timezonef._);
    return const SchemaObject(
        ObjectType.embeddedObject, Timezonef, 'Timezonef', [
      SchemaProperty('offset', RealmPropertyType.string, optional: true),
      SchemaProperty('description', RealmPropertyType.string, optional: true),
    ]);
  }
}

class Loginf extends _Loginf with RealmEntity, RealmObjectBase, EmbeddedObject {
  Loginf({
    String? uuid,
    String? username,
    String? password,
    String? salt,
    String? md5,
    String? sha1,
    String? sha256,
  }) {
    RealmObjectBase.set(this, 'uuid', uuid);
    RealmObjectBase.set(this, 'username', username);
    RealmObjectBase.set(this, 'password', password);
    RealmObjectBase.set(this, 'salt', salt);
    RealmObjectBase.set(this, 'md5', md5);
    RealmObjectBase.set(this, 'sha1', sha1);
    RealmObjectBase.set(this, 'sha256', sha256);
  }

  Loginf._();

  @override
  String? get uuid => RealmObjectBase.get<String>(this, 'uuid') as String?;
  @override
  set uuid(String? value) => RealmObjectBase.set(this, 'uuid', value);

  @override
  String? get username =>
      RealmObjectBase.get<String>(this, 'username') as String?;
  @override
  set username(String? value) => RealmObjectBase.set(this, 'username', value);

  @override
  String? get password =>
      RealmObjectBase.get<String>(this, 'password') as String?;
  @override
  set password(String? value) => RealmObjectBase.set(this, 'password', value);

  @override
  String? get salt => RealmObjectBase.get<String>(this, 'salt') as String?;
  @override
  set salt(String? value) => RealmObjectBase.set(this, 'salt', value);

  @override
  String? get md5 => RealmObjectBase.get<String>(this, 'md5') as String?;
  @override
  set md5(String? value) => RealmObjectBase.set(this, 'md5', value);

  @override
  String? get sha1 => RealmObjectBase.get<String>(this, 'sha1') as String?;
  @override
  set sha1(String? value) => RealmObjectBase.set(this, 'sha1', value);

  @override
  String? get sha256 => RealmObjectBase.get<String>(this, 'sha256') as String?;
  @override
  set sha256(String? value) => RealmObjectBase.set(this, 'sha256', value);

  @override
  Stream<RealmObjectChanges<Loginf>> get changes =>
      RealmObjectBase.getChanges<Loginf>(this);

  @override
  Loginf freeze() => RealmObjectBase.freezeObject<Loginf>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Loginf._);
    return const SchemaObject(ObjectType.embeddedObject, Loginf, 'Loginf', [
      SchemaProperty('uuid', RealmPropertyType.string, optional: true),
      SchemaProperty('username', RealmPropertyType.string, optional: true),
      SchemaProperty('password', RealmPropertyType.string, optional: true),
      SchemaProperty('salt', RealmPropertyType.string, optional: true),
      SchemaProperty('md5', RealmPropertyType.string, optional: true),
      SchemaProperty('sha1', RealmPropertyType.string, optional: true),
      SchemaProperty('sha256', RealmPropertyType.string, optional: true),
    ]);
  }
}

class Namef extends _Namef with RealmEntity, RealmObjectBase, EmbeddedObject {
  Namef({
    String? title,
    String? first,
    String? last,
  }) {
    RealmObjectBase.set(this, 'title', title);
    RealmObjectBase.set(this, 'first', first);
    RealmObjectBase.set(this, 'last', last);
  }

  Namef._();

  @override
  String? get title => RealmObjectBase.get<String>(this, 'title') as String?;
  @override
  set title(String? value) => RealmObjectBase.set(this, 'title', value);

  @override
  String? get first => RealmObjectBase.get<String>(this, 'first') as String?;
  @override
  set first(String? value) => RealmObjectBase.set(this, 'first', value);

  @override
  String? get last => RealmObjectBase.get<String>(this, 'last') as String?;
  @override
  set last(String? value) => RealmObjectBase.set(this, 'last', value);

  @override
  Stream<RealmObjectChanges<Namef>> get changes =>
      RealmObjectBase.getChanges<Namef>(this);

  @override
  Namef freeze() => RealmObjectBase.freezeObject<Namef>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Namef._);
    return const SchemaObject(ObjectType.embeddedObject, Namef, 'Namef', [
      SchemaProperty('title', RealmPropertyType.string, optional: true),
      SchemaProperty('first', RealmPropertyType.string, optional: true),
      SchemaProperty('last', RealmPropertyType.string, optional: true),
    ]);
  }
}

class Picturef extends _Picturef
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  Picturef({
    String? large,
    String? medium,
    String? thumbnail,
  }) {
    RealmObjectBase.set(this, 'large', large);
    RealmObjectBase.set(this, 'medium', medium);
    RealmObjectBase.set(this, 'thumbnail', thumbnail);
  }

  Picturef._();

  @override
  String? get large => RealmObjectBase.get<String>(this, 'large') as String?;
  @override
  set large(String? value) => RealmObjectBase.set(this, 'large', value);

  @override
  String? get medium => RealmObjectBase.get<String>(this, 'medium') as String?;
  @override
  set medium(String? value) => RealmObjectBase.set(this, 'medium', value);

  @override
  String? get thumbnail =>
      RealmObjectBase.get<String>(this, 'thumbnail') as String?;
  @override
  set thumbnail(String? value) => RealmObjectBase.set(this, 'thumbnail', value);

  @override
  Stream<RealmObjectChanges<Picturef>> get changes =>
      RealmObjectBase.getChanges<Picturef>(this);

  @override
  Picturef freeze() => RealmObjectBase.freezeObject<Picturef>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Picturef._);
    return const SchemaObject(ObjectType.embeddedObject, Picturef, 'Picturef', [
      SchemaProperty('large', RealmPropertyType.string, optional: true),
      SchemaProperty('medium', RealmPropertyType.string, optional: true),
      SchemaProperty('thumbnail', RealmPropertyType.string, optional: true),
    ]);
  }
}
