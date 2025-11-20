// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_view_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WalletViewEntity {

 int? get id; String get name; String get balance; Color get color; IconData get icon;
/// Create a copy of WalletViewEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletViewEntityCopyWith<WalletViewEntity> get copyWith => _$WalletViewEntityCopyWithImpl<WalletViewEntity>(this as WalletViewEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletViewEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.color, color) || other.color == color)&&(identical(other.icon, icon) || other.icon == icon));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,balance,color,icon);

@override
String toString() {
  return 'WalletViewEntity(id: $id, name: $name, balance: $balance, color: $color, icon: $icon)';
}


}

/// @nodoc
abstract mixin class $WalletViewEntityCopyWith<$Res>  {
  factory $WalletViewEntityCopyWith(WalletViewEntity value, $Res Function(WalletViewEntity) _then) = _$WalletViewEntityCopyWithImpl;
@useResult
$Res call({
 int? id, String name, String balance, Color color, IconData icon
});




}
/// @nodoc
class _$WalletViewEntityCopyWithImpl<$Res>
    implements $WalletViewEntityCopyWith<$Res> {
  _$WalletViewEntityCopyWithImpl(this._self, this._then);

  final WalletViewEntity _self;
  final $Res Function(WalletViewEntity) _then;

/// Create a copy of WalletViewEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = null,Object? balance = null,Object? color = null,Object? icon = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as IconData,
  ));
}

}


/// Adds pattern-matching-related methods to [WalletViewEntity].
extension WalletViewEntityPatterns on WalletViewEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletViewEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletViewEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletViewEntity value)  $default,){
final _that = this;
switch (_that) {
case _WalletViewEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletViewEntity value)?  $default,){
final _that = this;
switch (_that) {
case _WalletViewEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String name,  String balance,  Color color,  IconData icon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletViewEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String name,  String balance,  Color color,  IconData icon)  $default,) {final _that = this;
switch (_that) {
case _WalletViewEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String name,  String balance,  Color color,  IconData icon)?  $default,) {final _that = this;
switch (_that) {
case _WalletViewEntity() when $default != null:
return $default(_that.id,_that.name,_that.balance,_that.color,_that.icon);case _:
  return null;

}
}

}

/// @nodoc


class _WalletViewEntity extends WalletViewEntity {
  const _WalletViewEntity({required this.id, required this.name, required this.balance, required this.color, required this.icon}): super._();
  

@override final  int? id;
@override final  String name;
@override final  String balance;
@override final  Color color;
@override final  IconData icon;

/// Create a copy of WalletViewEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletViewEntityCopyWith<_WalletViewEntity> get copyWith => __$WalletViewEntityCopyWithImpl<_WalletViewEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletViewEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.color, color) || other.color == color)&&(identical(other.icon, icon) || other.icon == icon));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,balance,color,icon);

@override
String toString() {
  return 'WalletViewEntity(id: $id, name: $name, balance: $balance, color: $color, icon: $icon)';
}


}

/// @nodoc
abstract mixin class _$WalletViewEntityCopyWith<$Res> implements $WalletViewEntityCopyWith<$Res> {
  factory _$WalletViewEntityCopyWith(_WalletViewEntity value, $Res Function(_WalletViewEntity) _then) = __$WalletViewEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, String name, String balance, Color color, IconData icon
});




}
/// @nodoc
class __$WalletViewEntityCopyWithImpl<$Res>
    implements _$WalletViewEntityCopyWith<$Res> {
  __$WalletViewEntityCopyWithImpl(this._self, this._then);

  final _WalletViewEntity _self;
  final $Res Function(_WalletViewEntity) _then;

/// Create a copy of WalletViewEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = null,Object? balance = null,Object? color = null,Object? icon = null,}) {
  return _then(_WalletViewEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as IconData,
  ));
}


}

// dart format on
