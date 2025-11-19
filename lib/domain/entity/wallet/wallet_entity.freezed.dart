// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WalletEntity {

 int? get id; String get name; BalanceEntity get balance; Color get color; IconData get icon;
/// Create a copy of WalletEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletEntityCopyWith<WalletEntity> get copyWith => _$WalletEntityCopyWithImpl<WalletEntity>(this as WalletEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.color, color) || other.color == color)&&(identical(other.icon, icon) || other.icon == icon));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,balance,color,icon);

@override
String toString() {
  return 'WalletEntity(id: $id, name: $name, balance: $balance, color: $color, icon: $icon)';
}


}

/// @nodoc
abstract mixin class $WalletEntityCopyWith<$Res>  {
  factory $WalletEntityCopyWith(WalletEntity value, $Res Function(WalletEntity) _then) = _$WalletEntityCopyWithImpl;
@useResult
$Res call({
 int? id, String name, BalanceEntity balance, Color color, IconData icon
});


$BalanceEntityCopyWith<$Res> get balance;

}
/// @nodoc
class _$WalletEntityCopyWithImpl<$Res>
    implements $WalletEntityCopyWith<$Res> {
  _$WalletEntityCopyWithImpl(this._self, this._then);

  final WalletEntity _self;
  final $Res Function(WalletEntity) _then;

/// Create a copy of WalletEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = null,Object? balance = null,Object? color = null,Object? icon = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as BalanceEntity,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as IconData,
  ));
}
/// Create a copy of WalletEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BalanceEntityCopyWith<$Res> get balance {
  
  return $BalanceEntityCopyWith<$Res>(_self.balance, (value) {
    return _then(_self.copyWith(balance: value));
  });
}
}


/// Adds pattern-matching-related methods to [WalletEntity].
extension WalletEntityPatterns on WalletEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletEntity value)  $default,){
final _that = this;
switch (_that) {
case _WalletEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletEntity value)?  $default,){
final _that = this;
switch (_that) {
case _WalletEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String name,  BalanceEntity balance,  Color color,  IconData icon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String name,  BalanceEntity balance,  Color color,  IconData icon)  $default,) {final _that = this;
switch (_that) {
case _WalletEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String name,  BalanceEntity balance,  Color color,  IconData icon)?  $default,) {final _that = this;
switch (_that) {
case _WalletEntity() when $default != null:
return $default(_that.id,_that.name,_that.balance,_that.color,_that.icon);case _:
  return null;

}
}

}

/// @nodoc


class _WalletEntity extends WalletEntity {
  const _WalletEntity({required this.id, required this.name, required this.balance, required this.color, required this.icon}): super._();
  

@override final  int? id;
@override final  String name;
@override final  BalanceEntity balance;
@override final  Color color;
@override final  IconData icon;

/// Create a copy of WalletEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletEntityCopyWith<_WalletEntity> get copyWith => __$WalletEntityCopyWithImpl<_WalletEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.color, color) || other.color == color)&&(identical(other.icon, icon) || other.icon == icon));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,balance,color,icon);

@override
String toString() {
  return 'WalletEntity(id: $id, name: $name, balance: $balance, color: $color, icon: $icon)';
}


}

/// @nodoc
abstract mixin class _$WalletEntityCopyWith<$Res> implements $WalletEntityCopyWith<$Res> {
  factory _$WalletEntityCopyWith(_WalletEntity value, $Res Function(_WalletEntity) _then) = __$WalletEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, String name, BalanceEntity balance, Color color, IconData icon
});


@override $BalanceEntityCopyWith<$Res> get balance;

}
/// @nodoc
class __$WalletEntityCopyWithImpl<$Res>
    implements _$WalletEntityCopyWith<$Res> {
  __$WalletEntityCopyWithImpl(this._self, this._then);

  final _WalletEntity _self;
  final $Res Function(_WalletEntity) _then;

/// Create a copy of WalletEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = null,Object? balance = null,Object? color = null,Object? icon = null,}) {
  return _then(_WalletEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as BalanceEntity,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as IconData,
  ));
}

/// Create a copy of WalletEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BalanceEntityCopyWith<$Res> get balance {
  
  return $BalanceEntityCopyWith<$Res>(_self.balance, (value) {
    return _then(_self.copyWith(balance: value));
  });
}
}

/// @nodoc
mixin _$BalanceEntity {

 int get original; String get formatted;
/// Create a copy of BalanceEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BalanceEntityCopyWith<BalanceEntity> get copyWith => _$BalanceEntityCopyWithImpl<BalanceEntity>(this as BalanceEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BalanceEntity&&(identical(other.original, original) || other.original == original)&&(identical(other.formatted, formatted) || other.formatted == formatted));
}


@override
int get hashCode => Object.hash(runtimeType,original,formatted);

@override
String toString() {
  return 'BalanceEntity(original: $original, formatted: $formatted)';
}


}

/// @nodoc
abstract mixin class $BalanceEntityCopyWith<$Res>  {
  factory $BalanceEntityCopyWith(BalanceEntity value, $Res Function(BalanceEntity) _then) = _$BalanceEntityCopyWithImpl;
@useResult
$Res call({
 int original, String formatted
});




}
/// @nodoc
class _$BalanceEntityCopyWithImpl<$Res>
    implements $BalanceEntityCopyWith<$Res> {
  _$BalanceEntityCopyWithImpl(this._self, this._then);

  final BalanceEntity _self;
  final $Res Function(BalanceEntity) _then;

/// Create a copy of BalanceEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? original = null,Object? formatted = null,}) {
  return _then(_self.copyWith(
original: null == original ? _self.original : original // ignore: cast_nullable_to_non_nullable
as int,formatted: null == formatted ? _self.formatted : formatted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BalanceEntity].
extension BalanceEntityPatterns on BalanceEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BalanceEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BalanceEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BalanceEntity value)  $default,){
final _that = this;
switch (_that) {
case _BalanceEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BalanceEntity value)?  $default,){
final _that = this;
switch (_that) {
case _BalanceEntity() when $default != null:
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
case _BalanceEntity() when $default != null:
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
case _BalanceEntity():
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
case _BalanceEntity() when $default != null:
return $default(_that.original,_that.formatted);case _:
  return null;

}
}

}

/// @nodoc


class _BalanceEntity extends BalanceEntity {
  const _BalanceEntity({required this.original, required this.formatted}): super._();
  

@override final  int original;
@override final  String formatted;

/// Create a copy of BalanceEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BalanceEntityCopyWith<_BalanceEntity> get copyWith => __$BalanceEntityCopyWithImpl<_BalanceEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BalanceEntity&&(identical(other.original, original) || other.original == original)&&(identical(other.formatted, formatted) || other.formatted == formatted));
}


@override
int get hashCode => Object.hash(runtimeType,original,formatted);

@override
String toString() {
  return 'BalanceEntity(original: $original, formatted: $formatted)';
}


}

/// @nodoc
abstract mixin class _$BalanceEntityCopyWith<$Res> implements $BalanceEntityCopyWith<$Res> {
  factory _$BalanceEntityCopyWith(_BalanceEntity value, $Res Function(_BalanceEntity) _then) = __$BalanceEntityCopyWithImpl;
@override @useResult
$Res call({
 int original, String formatted
});




}
/// @nodoc
class __$BalanceEntityCopyWithImpl<$Res>
    implements _$BalanceEntityCopyWith<$Res> {
  __$BalanceEntityCopyWithImpl(this._self, this._then);

  final _BalanceEntity _self;
  final $Res Function(_BalanceEntity) _then;

/// Create a copy of BalanceEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? original = null,Object? formatted = null,}) {
  return _then(_BalanceEntity(
original: null == original ? _self.original : original // ignore: cast_nullable_to_non_nullable
as int,formatted: null == formatted ? _self.formatted : formatted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
