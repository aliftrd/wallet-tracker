// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionViewModel {

 int get id; String get type; CategoryModel get category; String get wallet;@JsonKey(name: 'store_name') String get storeName; String get date; String get note;@JsonKey(name: 'tax_amount') String get taxAmount;@JsonKey(name: 'total_amount') String get totalAmount;@JsonKey(name: 'created_at') String get createdAt;@JsonKey(name: 'updated_at') String get updatedAt;
/// Create a copy of TransactionViewModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionViewModelCopyWith<TransactionViewModel> get copyWith => _$TransactionViewModelCopyWithImpl<TransactionViewModel>(this as TransactionViewModel, _$identity);

  /// Serializes this TransactionViewModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionViewModel&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.category, category) || other.category == category)&&(identical(other.wallet, wallet) || other.wallet == wallet)&&(identical(other.storeName, storeName) || other.storeName == storeName)&&(identical(other.date, date) || other.date == date)&&(identical(other.note, note) || other.note == note)&&(identical(other.taxAmount, taxAmount) || other.taxAmount == taxAmount)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,category,wallet,storeName,date,note,taxAmount,totalAmount,createdAt,updatedAt);

@override
String toString() {
  return 'TransactionViewModel(id: $id, type: $type, category: $category, wallet: $wallet, storeName: $storeName, date: $date, note: $note, taxAmount: $taxAmount, totalAmount: $totalAmount, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $TransactionViewModelCopyWith<$Res>  {
  factory $TransactionViewModelCopyWith(TransactionViewModel value, $Res Function(TransactionViewModel) _then) = _$TransactionViewModelCopyWithImpl;
@useResult
$Res call({
 int id, String type, CategoryModel category, String wallet,@JsonKey(name: 'store_name') String storeName, String date, String note,@JsonKey(name: 'tax_amount') String taxAmount,@JsonKey(name: 'total_amount') String totalAmount,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt
});


$CategoryModelCopyWith<$Res> get category;

}
/// @nodoc
class _$TransactionViewModelCopyWithImpl<$Res>
    implements $TransactionViewModelCopyWith<$Res> {
  _$TransactionViewModelCopyWithImpl(this._self, this._then);

  final TransactionViewModel _self;
  final $Res Function(TransactionViewModel) _then;

/// Create a copy of TransactionViewModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? category = null,Object? wallet = null,Object? storeName = null,Object? date = null,Object? note = null,Object? taxAmount = null,Object? totalAmount = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CategoryModel,wallet: null == wallet ? _self.wallet : wallet // ignore: cast_nullable_to_non_nullable
as String,storeName: null == storeName ? _self.storeName : storeName // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,taxAmount: null == taxAmount ? _self.taxAmount : taxAmount // ignore: cast_nullable_to_non_nullable
as String,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of TransactionViewModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryModelCopyWith<$Res> get category {
  
  return $CategoryModelCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// Adds pattern-matching-related methods to [TransactionViewModel].
extension TransactionViewModelPatterns on TransactionViewModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionViewModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionViewModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionViewModel value)  $default,){
final _that = this;
switch (_that) {
case _TransactionViewModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionViewModel value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionViewModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String type,  CategoryModel category,  String wallet, @JsonKey(name: 'store_name')  String storeName,  String date,  String note, @JsonKey(name: 'tax_amount')  String taxAmount, @JsonKey(name: 'total_amount')  String totalAmount, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionViewModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String type,  CategoryModel category,  String wallet, @JsonKey(name: 'store_name')  String storeName,  String date,  String note, @JsonKey(name: 'tax_amount')  String taxAmount, @JsonKey(name: 'total_amount')  String totalAmount, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _TransactionViewModel():
return $default(_that.id,_that.type,_that.category,_that.wallet,_that.storeName,_that.date,_that.note,_that.taxAmount,_that.totalAmount,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String type,  CategoryModel category,  String wallet, @JsonKey(name: 'store_name')  String storeName,  String date,  String note, @JsonKey(name: 'tax_amount')  String taxAmount, @JsonKey(name: 'total_amount')  String totalAmount, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _TransactionViewModel() when $default != null:
return $default(_that.id,_that.type,_that.category,_that.wallet,_that.storeName,_that.date,_that.note,_that.taxAmount,_that.totalAmount,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransactionViewModel extends TransactionViewModel {
  const _TransactionViewModel({required this.id, required this.type, required this.category, required this.wallet, @JsonKey(name: 'store_name') required this.storeName, required this.date, required this.note, @JsonKey(name: 'tax_amount') required this.taxAmount, @JsonKey(name: 'total_amount') required this.totalAmount, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') required this.updatedAt}): super._();
  factory _TransactionViewModel.fromJson(Map<String, dynamic> json) => _$TransactionViewModelFromJson(json);

@override final  int id;
@override final  String type;
@override final  CategoryModel category;
@override final  String wallet;
@override@JsonKey(name: 'store_name') final  String storeName;
@override final  String date;
@override final  String note;
@override@JsonKey(name: 'tax_amount') final  String taxAmount;
@override@JsonKey(name: 'total_amount') final  String totalAmount;
@override@JsonKey(name: 'created_at') final  String createdAt;
@override@JsonKey(name: 'updated_at') final  String updatedAt;

/// Create a copy of TransactionViewModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionViewModelCopyWith<_TransactionViewModel> get copyWith => __$TransactionViewModelCopyWithImpl<_TransactionViewModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionViewModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionViewModel&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.category, category) || other.category == category)&&(identical(other.wallet, wallet) || other.wallet == wallet)&&(identical(other.storeName, storeName) || other.storeName == storeName)&&(identical(other.date, date) || other.date == date)&&(identical(other.note, note) || other.note == note)&&(identical(other.taxAmount, taxAmount) || other.taxAmount == taxAmount)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,category,wallet,storeName,date,note,taxAmount,totalAmount,createdAt,updatedAt);

@override
String toString() {
  return 'TransactionViewModel(id: $id, type: $type, category: $category, wallet: $wallet, storeName: $storeName, date: $date, note: $note, taxAmount: $taxAmount, totalAmount: $totalAmount, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$TransactionViewModelCopyWith<$Res> implements $TransactionViewModelCopyWith<$Res> {
  factory _$TransactionViewModelCopyWith(_TransactionViewModel value, $Res Function(_TransactionViewModel) _then) = __$TransactionViewModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String type, CategoryModel category, String wallet,@JsonKey(name: 'store_name') String storeName, String date, String note,@JsonKey(name: 'tax_amount') String taxAmount,@JsonKey(name: 'total_amount') String totalAmount,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt
});


@override $CategoryModelCopyWith<$Res> get category;

}
/// @nodoc
class __$TransactionViewModelCopyWithImpl<$Res>
    implements _$TransactionViewModelCopyWith<$Res> {
  __$TransactionViewModelCopyWithImpl(this._self, this._then);

  final _TransactionViewModel _self;
  final $Res Function(_TransactionViewModel) _then;

/// Create a copy of TransactionViewModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? category = null,Object? wallet = null,Object? storeName = null,Object? date = null,Object? note = null,Object? taxAmount = null,Object? totalAmount = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_TransactionViewModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CategoryModel,wallet: null == wallet ? _self.wallet : wallet // ignore: cast_nullable_to_non_nullable
as String,storeName: null == storeName ? _self.storeName : storeName // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,taxAmount: null == taxAmount ? _self.taxAmount : taxAmount // ignore: cast_nullable_to_non_nullable
as String,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of TransactionViewModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryModelCopyWith<$Res> get category {
  
  return $CategoryModelCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}

// dart format on
