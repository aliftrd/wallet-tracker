// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_view_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TransactionViewEntity {

 int get id; TransactionType get type; CategoryEntity get category; String get wallet; String get storeName; String get date; String? get note; String get taxAmount; String get totalAmount; String get createdAt; String get updatedAt;
/// Create a copy of TransactionViewEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionViewEntityCopyWith<TransactionViewEntity> get copyWith => _$TransactionViewEntityCopyWithImpl<TransactionViewEntity>(this as TransactionViewEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionViewEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.category, category) || other.category == category)&&(identical(other.wallet, wallet) || other.wallet == wallet)&&(identical(other.storeName, storeName) || other.storeName == storeName)&&(identical(other.date, date) || other.date == date)&&(identical(other.note, note) || other.note == note)&&(identical(other.taxAmount, taxAmount) || other.taxAmount == taxAmount)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,category,wallet,storeName,date,note,taxAmount,totalAmount,createdAt,updatedAt);

@override
String toString() {
  return 'TransactionViewEntity(id: $id, type: $type, category: $category, wallet: $wallet, storeName: $storeName, date: $date, note: $note, taxAmount: $taxAmount, totalAmount: $totalAmount, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $TransactionViewEntityCopyWith<$Res>  {
  factory $TransactionViewEntityCopyWith(TransactionViewEntity value, $Res Function(TransactionViewEntity) _then) = _$TransactionViewEntityCopyWithImpl;
@useResult
$Res call({
 int id, TransactionType type, CategoryEntity category, String wallet, String storeName, String date, String? note, String taxAmount, String totalAmount, String createdAt, String updatedAt
});


$CategoryEntityCopyWith<$Res> get category;

}
/// @nodoc
class _$TransactionViewEntityCopyWithImpl<$Res>
    implements $TransactionViewEntityCopyWith<$Res> {
  _$TransactionViewEntityCopyWithImpl(this._self, this._then);

  final TransactionViewEntity _self;
  final $Res Function(TransactionViewEntity) _then;

/// Create a copy of TransactionViewEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? category = null,Object? wallet = null,Object? storeName = null,Object? date = null,Object? note = freezed,Object? taxAmount = null,Object? totalAmount = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TransactionType,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CategoryEntity,wallet: null == wallet ? _self.wallet : wallet // ignore: cast_nullable_to_non_nullable
as String,storeName: null == storeName ? _self.storeName : storeName // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,taxAmount: null == taxAmount ? _self.taxAmount : taxAmount // ignore: cast_nullable_to_non_nullable
as String,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of TransactionViewEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryEntityCopyWith<$Res> get category {
  
  return $CategoryEntityCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// Adds pattern-matching-related methods to [TransactionViewEntity].
extension TransactionViewEntityPatterns on TransactionViewEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionViewEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionViewEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionViewEntity value)  $default,){
final _that = this;
switch (_that) {
case _TransactionViewEntity():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionViewEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionViewEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  TransactionType type,  CategoryEntity category,  String wallet,  String storeName,  String date,  String? note,  String taxAmount,  String totalAmount,  String createdAt,  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionViewEntity() when $default != null:
return $default(_that.id,_that.type,_that.category,_that.wallet,_that.storeName,_that.date,_that.note,_that.taxAmount,_that.totalAmount,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  TransactionType type,  CategoryEntity category,  String wallet,  String storeName,  String date,  String? note,  String taxAmount,  String totalAmount,  String createdAt,  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _TransactionViewEntity():
return $default(_that.id,_that.type,_that.category,_that.wallet,_that.storeName,_that.date,_that.note,_that.taxAmount,_that.totalAmount,_that.createdAt,_that.updatedAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  TransactionType type,  CategoryEntity category,  String wallet,  String storeName,  String date,  String? note,  String taxAmount,  String totalAmount,  String createdAt,  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _TransactionViewEntity() when $default != null:
return $default(_that.id,_that.type,_that.category,_that.wallet,_that.storeName,_that.date,_that.note,_that.taxAmount,_that.totalAmount,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _TransactionViewEntity extends TransactionViewEntity {
  const _TransactionViewEntity({required this.id, required this.type, required this.category, required this.wallet, required this.storeName, required this.date, required this.note, required this.taxAmount, required this.totalAmount, required this.createdAt, required this.updatedAt}): super._();
  

@override final  int id;
@override final  TransactionType type;
@override final  CategoryEntity category;
@override final  String wallet;
@override final  String storeName;
@override final  String date;
@override final  String? note;
@override final  String taxAmount;
@override final  String totalAmount;
@override final  String createdAt;
@override final  String updatedAt;

/// Create a copy of TransactionViewEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionViewEntityCopyWith<_TransactionViewEntity> get copyWith => __$TransactionViewEntityCopyWithImpl<_TransactionViewEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionViewEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.category, category) || other.category == category)&&(identical(other.wallet, wallet) || other.wallet == wallet)&&(identical(other.storeName, storeName) || other.storeName == storeName)&&(identical(other.date, date) || other.date == date)&&(identical(other.note, note) || other.note == note)&&(identical(other.taxAmount, taxAmount) || other.taxAmount == taxAmount)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,category,wallet,storeName,date,note,taxAmount,totalAmount,createdAt,updatedAt);

@override
String toString() {
  return 'TransactionViewEntity(id: $id, type: $type, category: $category, wallet: $wallet, storeName: $storeName, date: $date, note: $note, taxAmount: $taxAmount, totalAmount: $totalAmount, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$TransactionViewEntityCopyWith<$Res> implements $TransactionViewEntityCopyWith<$Res> {
  factory _$TransactionViewEntityCopyWith(_TransactionViewEntity value, $Res Function(_TransactionViewEntity) _then) = __$TransactionViewEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, TransactionType type, CategoryEntity category, String wallet, String storeName, String date, String? note, String taxAmount, String totalAmount, String createdAt, String updatedAt
});


@override $CategoryEntityCopyWith<$Res> get category;

}
/// @nodoc
class __$TransactionViewEntityCopyWithImpl<$Res>
    implements _$TransactionViewEntityCopyWith<$Res> {
  __$TransactionViewEntityCopyWithImpl(this._self, this._then);

  final _TransactionViewEntity _self;
  final $Res Function(_TransactionViewEntity) _then;

/// Create a copy of TransactionViewEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? category = null,Object? wallet = null,Object? storeName = null,Object? date = null,Object? note = freezed,Object? taxAmount = null,Object? totalAmount = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_TransactionViewEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TransactionType,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CategoryEntity,wallet: null == wallet ? _self.wallet : wallet // ignore: cast_nullable_to_non_nullable
as String,storeName: null == storeName ? _self.storeName : storeName // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,taxAmount: null == taxAmount ? _self.taxAmount : taxAmount // ignore: cast_nullable_to_non_nullable
as String,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of TransactionViewEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryEntityCopyWith<$Res> get category {
  
  return $CategoryEntityCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}

// dart format on
