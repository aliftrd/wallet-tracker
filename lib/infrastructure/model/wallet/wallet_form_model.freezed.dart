// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_form_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WalletFormModel {

 String get name;@JsonKey(name: 'initial_balance') String get initialBalance; String get color; String get icon;
/// Create a copy of WalletFormModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletFormModelCopyWith<WalletFormModel> get copyWith => _$WalletFormModelCopyWithImpl<WalletFormModel>(this as WalletFormModel, _$identity);

  /// Serializes this WalletFormModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletFormModel&&(identical(other.name, name) || other.name == name)&&(identical(other.initialBalance, initialBalance) || other.initialBalance == initialBalance)&&(identical(other.color, color) || other.color == color)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,initialBalance,color,icon);

@override
String toString() {
  return 'WalletFormModel(name: $name, initialBalance: $initialBalance, color: $color, icon: $icon)';
}


}

/// @nodoc
abstract mixin class $WalletFormModelCopyWith<$Res>  {
  factory $WalletFormModelCopyWith(WalletFormModel value, $Res Function(WalletFormModel) _then) = _$WalletFormModelCopyWithImpl;
@useResult
$Res call({
 String name,@JsonKey(name: 'initial_balance') String initialBalance, String color, String icon
});




}
/// @nodoc
class _$WalletFormModelCopyWithImpl<$Res>
    implements $WalletFormModelCopyWith<$Res> {
  _$WalletFormModelCopyWithImpl(this._self, this._then);

  final WalletFormModel _self;
  final $Res Function(WalletFormModel) _then;

/// Create a copy of WalletFormModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? initialBalance = null,Object? color = null,Object? icon = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,initialBalance: null == initialBalance ? _self.initialBalance : initialBalance // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [WalletFormModel].
extension WalletFormModelPatterns on WalletFormModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletFormModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletFormModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletFormModel value)  $default,){
final _that = this;
switch (_that) {
case _WalletFormModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletFormModel value)?  $default,){
final _that = this;
switch (_that) {
case _WalletFormModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name, @JsonKey(name: 'initial_balance')  String initialBalance,  String color,  String icon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletFormModel() when $default != null:
return $default(_that.name,_that.initialBalance,_that.color,_that.icon);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name, @JsonKey(name: 'initial_balance')  String initialBalance,  String color,  String icon)  $default,) {final _that = this;
switch (_that) {
case _WalletFormModel():
return $default(_that.name,_that.initialBalance,_that.color,_that.icon);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name, @JsonKey(name: 'initial_balance')  String initialBalance,  String color,  String icon)?  $default,) {final _that = this;
switch (_that) {
case _WalletFormModel() when $default != null:
return $default(_that.name,_that.initialBalance,_that.color,_that.icon);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WalletFormModel extends WalletFormModel {
  const _WalletFormModel({required this.name, @JsonKey(name: 'initial_balance') required this.initialBalance, required this.color, required this.icon}): super._();
  factory _WalletFormModel.fromJson(Map<String, dynamic> json) => _$WalletFormModelFromJson(json);

@override final  String name;
@override@JsonKey(name: 'initial_balance') final  String initialBalance;
@override final  String color;
@override final  String icon;

/// Create a copy of WalletFormModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletFormModelCopyWith<_WalletFormModel> get copyWith => __$WalletFormModelCopyWithImpl<_WalletFormModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WalletFormModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletFormModel&&(identical(other.name, name) || other.name == name)&&(identical(other.initialBalance, initialBalance) || other.initialBalance == initialBalance)&&(identical(other.color, color) || other.color == color)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,initialBalance,color,icon);

@override
String toString() {
  return 'WalletFormModel(name: $name, initialBalance: $initialBalance, color: $color, icon: $icon)';
}


}

/// @nodoc
abstract mixin class _$WalletFormModelCopyWith<$Res> implements $WalletFormModelCopyWith<$Res> {
  factory _$WalletFormModelCopyWith(_WalletFormModel value, $Res Function(_WalletFormModel) _then) = __$WalletFormModelCopyWithImpl;
@override @useResult
$Res call({
 String name,@JsonKey(name: 'initial_balance') String initialBalance, String color, String icon
});




}
/// @nodoc
class __$WalletFormModelCopyWithImpl<$Res>
    implements _$WalletFormModelCopyWith<$Res> {
  __$WalletFormModelCopyWithImpl(this._self, this._then);

  final _WalletFormModel _self;
  final $Res Function(_WalletFormModel) _then;

/// Create a copy of WalletFormModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? initialBalance = null,Object? color = null,Object? icon = null,}) {
  return _then(_WalletFormModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,initialBalance: null == initialBalance ? _self.initialBalance : initialBalance // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
