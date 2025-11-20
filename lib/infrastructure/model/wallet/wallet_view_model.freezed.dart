// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WalletViewModel {

 int get id; String get name; String get balance; String get color; String get icon;
/// Create a copy of WalletViewModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletViewModelCopyWith<WalletViewModel> get copyWith => _$WalletViewModelCopyWithImpl<WalletViewModel>(this as WalletViewModel, _$identity);

  /// Serializes this WalletViewModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletViewModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.color, color) || other.color == color)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,balance,color,icon);

@override
String toString() {
  return 'WalletViewModel(id: $id, name: $name, balance: $balance, color: $color, icon: $icon)';
}


}

/// @nodoc
abstract mixin class $WalletViewModelCopyWith<$Res>  {
  factory $WalletViewModelCopyWith(WalletViewModel value, $Res Function(WalletViewModel) _then) = _$WalletViewModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String balance, String color, String icon
});




}
/// @nodoc
class _$WalletViewModelCopyWithImpl<$Res>
    implements $WalletViewModelCopyWith<$Res> {
  _$WalletViewModelCopyWithImpl(this._self, this._then);

  final WalletViewModel _self;
  final $Res Function(WalletViewModel) _then;

/// Create a copy of WalletViewModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? balance = null,Object? color = null,Object? icon = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [WalletViewModel].
extension WalletViewModelPatterns on WalletViewModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletViewModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletViewModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletViewModel value)  $default,){
final _that = this;
switch (_that) {
case _WalletViewModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletViewModel value)?  $default,){
final _that = this;
switch (_that) {
case _WalletViewModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String balance,  String color,  String icon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletViewModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String balance,  String color,  String icon)  $default,) {final _that = this;
switch (_that) {
case _WalletViewModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String balance,  String color,  String icon)?  $default,) {final _that = this;
switch (_that) {
case _WalletViewModel() when $default != null:
return $default(_that.id,_that.name,_that.balance,_that.color,_that.icon);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WalletViewModel extends WalletViewModel {
  const _WalletViewModel({required this.id, required this.name, required this.balance, required this.color, required this.icon}): super._();
  factory _WalletViewModel.fromJson(Map<String, dynamic> json) => _$WalletViewModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  String balance;
@override final  String color;
@override final  String icon;

/// Create a copy of WalletViewModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletViewModelCopyWith<_WalletViewModel> get copyWith => __$WalletViewModelCopyWithImpl<_WalletViewModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WalletViewModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletViewModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.color, color) || other.color == color)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,balance,color,icon);

@override
String toString() {
  return 'WalletViewModel(id: $id, name: $name, balance: $balance, color: $color, icon: $icon)';
}


}

/// @nodoc
abstract mixin class _$WalletViewModelCopyWith<$Res> implements $WalletViewModelCopyWith<$Res> {
  factory _$WalletViewModelCopyWith(_WalletViewModel value, $Res Function(_WalletViewModel) _then) = __$WalletViewModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String balance, String color, String icon
});




}
/// @nodoc
class __$WalletViewModelCopyWithImpl<$Res>
    implements _$WalletViewModelCopyWith<$Res> {
  __$WalletViewModelCopyWithImpl(this._self, this._then);

  final _WalletViewModel _self;
  final $Res Function(_WalletViewModel) _then;

/// Create a copy of WalletViewModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? balance = null,Object? color = null,Object? icon = null,}) {
  return _then(_WalletViewModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
