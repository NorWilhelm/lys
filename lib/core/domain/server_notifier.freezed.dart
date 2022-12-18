// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServerOptions _$ServerOptionsFromJson(Map<String, dynamic> json) {
  return _ServerOptions.fromJson(json);
}

/// @nodoc
mixin _$ServerOptions {
  String? get version => throw _privateConstructorUsedError;
  String get readMe => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerOptionsCopyWith<ServerOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerOptionsCopyWith<$Res> {
  factory $ServerOptionsCopyWith(
          ServerOptions value, $Res Function(ServerOptions) then) =
      _$ServerOptionsCopyWithImpl<$Res, ServerOptions>;
  @useResult
  $Res call({String? version, String readMe});
}

/// @nodoc
class _$ServerOptionsCopyWithImpl<$Res, $Val extends ServerOptions>
    implements $ServerOptionsCopyWith<$Res> {
  _$ServerOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = freezed,
    Object? readMe = null,
  }) {
    return _then(_value.copyWith(
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      readMe: null == readMe
          ? _value.readMe
          : readMe // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServerOptionsCopyWith<$Res>
    implements $ServerOptionsCopyWith<$Res> {
  factory _$$_ServerOptionsCopyWith(
          _$_ServerOptions value, $Res Function(_$_ServerOptions) then) =
      __$$_ServerOptionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? version, String readMe});
}

/// @nodoc
class __$$_ServerOptionsCopyWithImpl<$Res>
    extends _$ServerOptionsCopyWithImpl<$Res, _$_ServerOptions>
    implements _$$_ServerOptionsCopyWith<$Res> {
  __$$_ServerOptionsCopyWithImpl(
      _$_ServerOptions _value, $Res Function(_$_ServerOptions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = freezed,
    Object? readMe = null,
  }) {
    return _then(_$_ServerOptions(
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      readMe: null == readMe
          ? _value.readMe
          : readMe // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServerOptions extends _ServerOptions {
  const _$_ServerOptions({this.version = null, this.readMe = ""}) : super._();

  factory _$_ServerOptions.fromJson(Map<String, dynamic> json) =>
      _$$_ServerOptionsFromJson(json);

  @override
  @JsonKey()
  final String? version;
  @override
  @JsonKey()
  final String readMe;

  @override
  String toString() {
    return 'ServerOptions(version: $version, readMe: $readMe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerOptions &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.readMe, readMe) || other.readMe == readMe));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, version, readMe);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServerOptionsCopyWith<_$_ServerOptions> get copyWith =>
      __$$_ServerOptionsCopyWithImpl<_$_ServerOptions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServerOptionsToJson(
      this,
    );
  }
}

abstract class _ServerOptions extends ServerOptions {
  const factory _ServerOptions({final String? version, final String readMe}) =
      _$_ServerOptions;
  const _ServerOptions._() : super._();

  factory _ServerOptions.fromJson(Map<String, dynamic> json) =
      _$_ServerOptions.fromJson;

  @override
  String? get version;
  @override
  String get readMe;
  @override
  @JsonKey(ignore: true)
  _$$_ServerOptionsCopyWith<_$_ServerOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ServerModel {
  String get serverName => throw _privateConstructorUsedError;
  String get server =>
      throw _privateConstructorUsedError; // Reqested from backend on connection
  ServerOptions get serverOptions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ServerModelCopyWith<ServerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerModelCopyWith<$Res> {
  factory $ServerModelCopyWith(
          ServerModel value, $Res Function(ServerModel) then) =
      _$ServerModelCopyWithImpl<$Res, ServerModel>;
  @useResult
  $Res call({String serverName, String server, ServerOptions serverOptions});

  $ServerOptionsCopyWith<$Res> get serverOptions;
}

/// @nodoc
class _$ServerModelCopyWithImpl<$Res, $Val extends ServerModel>
    implements $ServerModelCopyWith<$Res> {
  _$ServerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serverName = null,
    Object? server = null,
    Object? serverOptions = null,
  }) {
    return _then(_value.copyWith(
      serverName: null == serverName
          ? _value.serverName
          : serverName // ignore: cast_nullable_to_non_nullable
              as String,
      server: null == server
          ? _value.server
          : server // ignore: cast_nullable_to_non_nullable
              as String,
      serverOptions: null == serverOptions
          ? _value.serverOptions
          : serverOptions // ignore: cast_nullable_to_non_nullable
              as ServerOptions,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ServerOptionsCopyWith<$Res> get serverOptions {
    return $ServerOptionsCopyWith<$Res>(_value.serverOptions, (value) {
      return _then(_value.copyWith(serverOptions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ServerModelCopyWith<$Res>
    implements $ServerModelCopyWith<$Res> {
  factory _$$_ServerModelCopyWith(
          _$_ServerModel value, $Res Function(_$_ServerModel) then) =
      __$$_ServerModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String serverName, String server, ServerOptions serverOptions});

  @override
  $ServerOptionsCopyWith<$Res> get serverOptions;
}

/// @nodoc
class __$$_ServerModelCopyWithImpl<$Res>
    extends _$ServerModelCopyWithImpl<$Res, _$_ServerModel>
    implements _$$_ServerModelCopyWith<$Res> {
  __$$_ServerModelCopyWithImpl(
      _$_ServerModel _value, $Res Function(_$_ServerModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serverName = null,
    Object? server = null,
    Object? serverOptions = null,
  }) {
    return _then(_$_ServerModel(
      serverName: null == serverName
          ? _value.serverName
          : serverName // ignore: cast_nullable_to_non_nullable
              as String,
      server: null == server
          ? _value.server
          : server // ignore: cast_nullable_to_non_nullable
              as String,
      serverOptions: null == serverOptions
          ? _value.serverOptions
          : serverOptions // ignore: cast_nullable_to_non_nullable
              as ServerOptions,
    ));
  }
}

/// @nodoc

class _$_ServerModel extends _ServerModel {
  const _$_ServerModel(
      {required this.serverName,
      required this.server,
      required this.serverOptions})
      : super._();

  @override
  final String serverName;
  @override
  final String server;
// Reqested from backend on connection
  @override
  final ServerOptions serverOptions;

  @override
  String toString() {
    return 'ServerModel(serverName: $serverName, server: $server, serverOptions: $serverOptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerModel &&
            (identical(other.serverName, serverName) ||
                other.serverName == serverName) &&
            (identical(other.server, server) || other.server == server) &&
            (identical(other.serverOptions, serverOptions) ||
                other.serverOptions == serverOptions));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, serverName, server, serverOptions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServerModelCopyWith<_$_ServerModel> get copyWith =>
      __$$_ServerModelCopyWithImpl<_$_ServerModel>(this, _$identity);
}

abstract class _ServerModel extends ServerModel {
  const factory _ServerModel(
      {required final String serverName,
      required final String server,
      required final ServerOptions serverOptions}) = _$_ServerModel;
  const _ServerModel._() : super._();

  @override
  String get serverName;
  @override
  String get server;
  @override // Reqested from backend on connection
  ServerOptions get serverOptions;
  @override
  @JsonKey(ignore: true)
  _$$_ServerModelCopyWith<_$_ServerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
