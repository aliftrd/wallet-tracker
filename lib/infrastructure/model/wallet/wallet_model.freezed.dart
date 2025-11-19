// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WalletModel {

 int get id; String get name; BalanceModel get balance; String get color; String get icon;
/// Create a copy of WalletModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletModelCopyWith<WalletModel> get copyWith => _$WalletModelCopyWithImpl<WalletModel>(this as WalletModel, _$identity);

  /// Serializes this WalletModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.color, color) || other.color == color)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,balance,color,icon);

@override
String toString() {
  return 'WalletModel(id: $id, name: $name, balance: $balance, color: $color, icon: $icon)';
}


}

/// @nodoc
abstract mixin class $WalletModelCopyWith<$Res>  {
  factory $WalletModelCopyWith(WalletModel value, $Res Function(WalletModel) _then) = _$WalletModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, BalanceModel balance, String color, String icon
});


$BalanceModelCopyWith<$Res> get balance;

}
/// @nodoc
class _$WalletModelCopyWithImpl<$Res>
    implements $WalletModelCopyWith<$Res> {
  _$WalletModelCopyWithImpl(this._self, this._then);

  final WalletModel _self;
  final $Res Function(WalletModel) _then;

/// Create a copy of WalletModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? balance = null,Object? color = null,Object? icon = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as BalanceModel,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of WalletModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BalanceModelCopyWith<$Res> get balance {
  
  return $BalanceModelCopyWith<$Res>(_self.balance, (value) {
    return _then(_self.copyWith(balance: value));
  });
}
}


/// Adds pattern-matching-related methods to [WalletModel].
extension WalletModelPatterns on WalletModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletModel value)  $default,){
final _that = this;
switch (_that) {
case _WalletModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletModel value)?  $default,){
final _that = this;
switch (_that) {
case _WalletModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  BalanceModel balance,  String color,  String icon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletModel() when $default != null:
return $default(_that.id,_that.name,_that.balance,_that.color,_that.icon);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  BalanceModel balance,  String color,  String icon)  $default,) {final _that = this;
switch (_that) {
case _WalletModel():
return $default(_that.id,_that.name,_that.balance,_that.color,_that.icon);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  BalanceModel balance,  String color,  String icon)?  $default,) {final _that = this;
switch (_that) {
case _WalletModel() when $default != null:
return $default(_that.id,_that.name,_that.balance,_that.color,_that.icon);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WalletModel extends WalletModel {
  const _WalletModel({required this.id, required this.name, required this.balance, required this.color, required this.icon}): super._();
  factory _WalletModel.fromJson(Map<String, dynamic> json) => _$WalletModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  BalanceModel balance;
@override final  String color;
@override final  String icon;

/// Create a copy of WalletModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletModelCopyWith<_WalletModel> get copyWith => __$WalletModelCopyWithImpl<_WalletModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WalletModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.color, color) || other.color == color)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,balance,color,icon);

@override
String toString() {
  return 'WalletModel(id: $id, name: $name, balance: $balance, color: $color, icon: $icon)';
}


}

/// @nodoc
abstract mixin class _$WalletModelCopyWith<$Res> implements $WalletModelCopyWith<$Res> {
  factory _$WalletModelCopyWith(_WalletModel value, $Res Function(_WalletModel) _then) = __$WalletModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, BalanceModel balance, String color, String icon
});


@override $BalanceModelCopyWith<$Res> get balance;

}
/// @nodoc
class __$WalletModelCopyWithImpl<$Res>
    implements _$WalletModelCopyWith<$Res> {
  __$WalletModelCopyWithImpl(this._self, this._then);

  final _WalletModel _self;
  final $Res Function(_WalletModel) _then;

/// Create a copy of WalletModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? balance = null,Object? color = null,Object? icon = null,}) {
  return _then(_WalletModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as BalanceModel,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of WalletModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BalanceModelCopyWith<$Res> get balance {
  
  return $BalanceModelCopyWith<$Res>(_self.balance, (value) {
    return _then(_self.copyWith(balance: value));
  });
}
}


/// @nodoc
mixin _$BalanceModel {

 int get original; String get formatted;
/// Create a copy of BalanceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BalanceModelCopyWith<BalanceModel> get copyWith => _$BalanceModelCopyWithImpl<BalanceModel>(this as BalanceModel, _$identity);

  /// Serializes this BalanceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BalanceModel&&(identical(other.original, original) || other.original == original)&&(identical(other.formatted, formatted) || other.formatted == formatted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,original,formatted);

@override
String toString() {
  return 'BalanceModel(original: $original, formatted: $formatted)';
}


}

/// @nodoc
abstract mixin class $BalanceModelCopyWith<$Res>  {
  factory $BalanceModelCopyWith(BalanceModel value, $Res Function(BalanceModel) _then) = _$BalanceModelCopyWithImpl;
@useResult
$Res call({
 int original, String formatted
});




}
/// @nodoc
class _$BalanceModelCopyWithImpl<$Res>
    implements $BalanceModelCopyWith<$Res> {
  _$BalanceModelCopyWithImpl(this._self, this._then);

  final BalanceModel _self;
  final $Res Function(BalanceModel) _then;

/// Create a copy of BalanceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? original = null,Object? formatted = null,}) {
  return _then(_self.copyWith(
original: null == original ? _self.original : original // ignore: cast_nullable_to_non_nullable
as int,formatted: null == formatted ? _self.formatted : formatted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BalanceModel].
extension BalanceModelPatterns on BalanceModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BalanceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BalanceModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BalanceModel value)  $default,){
final _that = this;
switch (_that) {
case _BalanceModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BalanceModel value)?  $default,){
final _that = this;
switch (_that) {
case _BalanceModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int original,  String formatted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BalanceModel() when $default != null:
return $default(_that.original,_that.formatted);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int original,  String formatted)  $default,) {final _that = this;
switch (_that) {
case _BalanceModel():
return $default(_that.original,_that.formatted);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int original,  String formatted)?  $default,) {final _that = this;
switch (_that) {
case _BalanceModel() when $default != null:
return $default(_that.original,_that.formatted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BalanceModel extends BalanceModel {
  const _BalanceModel({required this.original, required this.formatted}): super._();
  factory _BalanceModel.fromJson(Map<String, dynamic> json) => _$BalanceModelFromJson(json);

@override final  int original;
@override final  String formatted;

/// Create a copy of BalanceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BalanceModelCopyWith<_BalanceModel> get copyWith => __$BalanceModelCopyWithImpl<_BalanceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BalanceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BalanceModel&&(identical(other.original, original) || other.original == original)&&(identical(other.formatted, formatted) || other.formatted == formatted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,original,formatted);

@override
String toString() {
  return 'BalanceModel(original: $original, formatted: $formatted)';
}


}

/// @nodoc
abstract mixin class _$BalanceModelCopyWith<$Res> implements $BalanceModelCopyWith<$Res> {
  factory _$BalanceModelCopyWith(_BalanceModel value, $Res Function(_BalanceModel) _then) = __$BalanceModelCopyWithImpl;
@override @useResult
$Res call({
 int original, String formatted
});




}
/// @nodoc
class __$BalanceModelCopyWithImpl<$Res>
    implements _$BalanceModelCopyWith<$Res> {
  __$BalanceModelCopyWithImpl(this._self, this._then);

  final _BalanceModel _self;
  final $Res Function(_BalanceModel) _then;

/// Create a copy of BalanceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? original = null,Object? formatted = null,}) {
  return _then(_BalanceModel(
original: null == original ? _self.original : original // ignore: cast_nullable_to_non_nullable
as int,formatted: null == formatted ? _self.formatted : formatted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
