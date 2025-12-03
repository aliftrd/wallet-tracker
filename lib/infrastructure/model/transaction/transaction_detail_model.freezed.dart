// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionDetailModel {

 int get id; String get type; CategoryModel get category; String get wallet;@JsonKey(name: 'store_name') String get storeName; String get date; String get note; List<TransactionItemModel> get items;@JsonKey(name: 'tax_amount') MoneyResponse get taxAmount;@JsonKey(name: 'total_amount') MoneyResponse get totalAmount;@JsonKey(name: 'created_at') String get createdAt;@JsonKey(name: 'updated_at') String get updatedAt;
/// Create a copy of TransactionDetailModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionDetailModelCopyWith<TransactionDetailModel> get copyWith => _$TransactionDetailModelCopyWithImpl<TransactionDetailModel>(this as TransactionDetailModel, _$identity);

  /// Serializes this TransactionDetailModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionDetailModel&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.category, category) || other.category == category)&&(identical(other.wallet, wallet) || other.wallet == wallet)&&(identical(other.storeName, storeName) || other.storeName == storeName)&&(identical(other.date, date) || other.date == date)&&(identical(other.note, note) || other.note == note)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.taxAmount, taxAmount) || other.taxAmount == taxAmount)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,category,wallet,storeName,date,note,const DeepCollectionEquality().hash(items),taxAmount,totalAmount,createdAt,updatedAt);

@override
String toString() {
  return 'TransactionDetailModel(id: $id, type: $type, category: $category, wallet: $wallet, storeName: $storeName, date: $date, note: $note, items: $items, taxAmount: $taxAmount, totalAmount: $totalAmount, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $TransactionDetailModelCopyWith<$Res>  {
  factory $TransactionDetailModelCopyWith(TransactionDetailModel value, $Res Function(TransactionDetailModel) _then) = _$TransactionDetailModelCopyWithImpl;
@useResult
$Res call({
 int id, String type, CategoryModel category, String wallet,@JsonKey(name: 'store_name') String storeName, String date, String note, List<TransactionItemModel> items,@JsonKey(name: 'tax_amount') MoneyResponse taxAmount,@JsonKey(name: 'total_amount') MoneyResponse totalAmount,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt
});


$CategoryModelCopyWith<$Res> get category;

}
/// @nodoc
class _$TransactionDetailModelCopyWithImpl<$Res>
    implements $TransactionDetailModelCopyWith<$Res> {
  _$TransactionDetailModelCopyWithImpl(this._self, this._then);

  final TransactionDetailModel _self;
  final $Res Function(TransactionDetailModel) _then;

/// Create a copy of TransactionDetailModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? category = null,Object? wallet = null,Object? storeName = null,Object? date = null,Object? note = null,Object? items = null,Object? taxAmount = null,Object? totalAmount = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CategoryModel,wallet: null == wallet ? _self.wallet : wallet // ignore: cast_nullable_to_non_nullable
as String,storeName: null == storeName ? _self.storeName : storeName // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<TransactionItemModel>,taxAmount: null == taxAmount ? _self.taxAmount : taxAmount // ignore: cast_nullable_to_non_nullable
as MoneyResponse,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as MoneyResponse,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of TransactionDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryModelCopyWith<$Res> get category {
  
  return $CategoryModelCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// Adds pattern-matching-related methods to [TransactionDetailModel].
extension TransactionDetailModelPatterns on TransactionDetailModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionDetailModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionDetailModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionDetailModel value)  $default,){
final _that = this;
switch (_that) {
case _TransactionDetailModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionDetailModel value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionDetailModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String type,  CategoryModel category,  String wallet, @JsonKey(name: 'store_name')  String storeName,  String date,  String note,  List<TransactionItemModel> items, @JsonKey(name: 'tax_amount')  MoneyResponse taxAmount, @JsonKey(name: 'total_amount')  MoneyResponse totalAmount, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionDetailModel() when $default != null:
return $default(_that.id,_that.type,_that.category,_that.wallet,_that.storeName,_that.date,_that.note,_that.items,_that.taxAmount,_that.totalAmount,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String type,  CategoryModel category,  String wallet, @JsonKey(name: 'store_name')  String storeName,  String date,  String note,  List<TransactionItemModel> items, @JsonKey(name: 'tax_amount')  MoneyResponse taxAmount, @JsonKey(name: 'total_amount')  MoneyResponse totalAmount, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _TransactionDetailModel():
return $default(_that.id,_that.type,_that.category,_that.wallet,_that.storeName,_that.date,_that.note,_that.items,_that.taxAmount,_that.totalAmount,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String type,  CategoryModel category,  String wallet, @JsonKey(name: 'store_name')  String storeName,  String date,  String note,  List<TransactionItemModel> items, @JsonKey(name: 'tax_amount')  MoneyResponse taxAmount, @JsonKey(name: 'total_amount')  MoneyResponse totalAmount, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _TransactionDetailModel() when $default != null:
return $default(_that.id,_that.type,_that.category,_that.wallet,_that.storeName,_that.date,_that.note,_that.items,_that.taxAmount,_that.totalAmount,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransactionDetailModel extends TransactionDetailModel {
  const _TransactionDetailModel({required this.id, required this.type, required this.category, required this.wallet, @JsonKey(name: 'store_name') required this.storeName, required this.date, required this.note, required final  List<TransactionItemModel> items, @JsonKey(name: 'tax_amount') required this.taxAmount, @JsonKey(name: 'total_amount') required this.totalAmount, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') required this.updatedAt}): _items = items,super._();
  factory _TransactionDetailModel.fromJson(Map<String, dynamic> json) => _$TransactionDetailModelFromJson(json);

@override final  int id;
@override final  String type;
@override final  CategoryModel category;
@override final  String wallet;
@override@JsonKey(name: 'store_name') final  String storeName;
@override final  String date;
@override final  String note;
 final  List<TransactionItemModel> _items;
@override List<TransactionItemModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey(name: 'tax_amount') final  MoneyResponse taxAmount;
@override@JsonKey(name: 'total_amount') final  MoneyResponse totalAmount;
@override@JsonKey(name: 'created_at') final  String createdAt;
@override@JsonKey(name: 'updated_at') final  String updatedAt;

/// Create a copy of TransactionDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionDetailModelCopyWith<_TransactionDetailModel> get copyWith => __$TransactionDetailModelCopyWithImpl<_TransactionDetailModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionDetailModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionDetailModel&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.category, category) || other.category == category)&&(identical(other.wallet, wallet) || other.wallet == wallet)&&(identical(other.storeName, storeName) || other.storeName == storeName)&&(identical(other.date, date) || other.date == date)&&(identical(other.note, note) || other.note == note)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.taxAmount, taxAmount) || other.taxAmount == taxAmount)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,category,wallet,storeName,date,note,const DeepCollectionEquality().hash(_items),taxAmount,totalAmount,createdAt,updatedAt);

@override
String toString() {
  return 'TransactionDetailModel(id: $id, type: $type, category: $category, wallet: $wallet, storeName: $storeName, date: $date, note: $note, items: $items, taxAmount: $taxAmount, totalAmount: $totalAmount, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$TransactionDetailModelCopyWith<$Res> implements $TransactionDetailModelCopyWith<$Res> {
  factory _$TransactionDetailModelCopyWith(_TransactionDetailModel value, $Res Function(_TransactionDetailModel) _then) = __$TransactionDetailModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String type, CategoryModel category, String wallet,@JsonKey(name: 'store_name') String storeName, String date, String note, List<TransactionItemModel> items,@JsonKey(name: 'tax_amount') MoneyResponse taxAmount,@JsonKey(name: 'total_amount') MoneyResponse totalAmount,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt
});


@override $CategoryModelCopyWith<$Res> get category;

}
/// @nodoc
class __$TransactionDetailModelCopyWithImpl<$Res>
    implements _$TransactionDetailModelCopyWith<$Res> {
  __$TransactionDetailModelCopyWithImpl(this._self, this._then);

  final _TransactionDetailModel _self;
  final $Res Function(_TransactionDetailModel) _then;

/// Create a copy of TransactionDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? category = null,Object? wallet = null,Object? storeName = null,Object? date = null,Object? note = null,Object? items = null,Object? taxAmount = null,Object? totalAmount = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_TransactionDetailModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CategoryModel,wallet: null == wallet ? _self.wallet : wallet // ignore: cast_nullable_to_non_nullable
as String,storeName: null == storeName ? _self.storeName : storeName // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<TransactionItemModel>,taxAmount: null == taxAmount ? _self.taxAmount : taxAmount // ignore: cast_nullable_to_non_nullable
as MoneyResponse,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as MoneyResponse,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of TransactionDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryModelCopyWith<$Res> get category {
  
  return $CategoryModelCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// @nodoc
mixin _$TransactionItemModel {

 String get name; int get quantity; MoneyResponse get price;@JsonKey(name: 'total_amount') MoneyResponse get totalAmount;
/// Create a copy of TransactionItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionItemModelCopyWith<TransactionItemModel> get copyWith => _$TransactionItemModelCopyWithImpl<TransactionItemModel>(this as TransactionItemModel, _$identity);

  /// Serializes this TransactionItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionItemModel&&(identical(other.name, name) || other.name == name)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,quantity,price,totalAmount);

@override
String toString() {
  return 'TransactionItemModel(name: $name, quantity: $quantity, price: $price, totalAmount: $totalAmount)';
}


}

/// @nodoc
abstract mixin class $TransactionItemModelCopyWith<$Res>  {
  factory $TransactionItemModelCopyWith(TransactionItemModel value, $Res Function(TransactionItemModel) _then) = _$TransactionItemModelCopyWithImpl;
@useResult
$Res call({
 String name, int quantity, MoneyResponse price,@JsonKey(name: 'total_amount') MoneyResponse totalAmount
});




}
/// @nodoc
class _$TransactionItemModelCopyWithImpl<$Res>
    implements $TransactionItemModelCopyWith<$Res> {
  _$TransactionItemModelCopyWithImpl(this._self, this._then);

  final TransactionItemModel _self;
  final $Res Function(TransactionItemModel) _then;

/// Create a copy of TransactionItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? quantity = null,Object? price = null,Object? totalAmount = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as MoneyResponse,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as MoneyResponse,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionItemModel].
extension TransactionItemModelPatterns on TransactionItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionItemModel value)  $default,){
final _that = this;
switch (_that) {
case _TransactionItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  int quantity,  MoneyResponse price, @JsonKey(name: 'total_amount')  MoneyResponse totalAmount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionItemModel() when $default != null:
return $default(_that.name,_that.quantity,_that.price,_that.totalAmount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  int quantity,  MoneyResponse price, @JsonKey(name: 'total_amount')  MoneyResponse totalAmount)  $default,) {final _that = this;
switch (_that) {
case _TransactionItemModel():
return $default(_that.name,_that.quantity,_that.price,_that.totalAmount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  int quantity,  MoneyResponse price, @JsonKey(name: 'total_amount')  MoneyResponse totalAmount)?  $default,) {final _that = this;
switch (_that) {
case _TransactionItemModel() when $default != null:
return $default(_that.name,_that.quantity,_that.price,_that.totalAmount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransactionItemModel extends TransactionItemModel {
  const _TransactionItemModel({required this.name, required this.quantity, required this.price, @JsonKey(name: 'total_amount') required this.totalAmount}): super._();
  factory _TransactionItemModel.fromJson(Map<String, dynamic> json) => _$TransactionItemModelFromJson(json);

@override final  String name;
@override final  int quantity;
@override final  MoneyResponse price;
@override@JsonKey(name: 'total_amount') final  MoneyResponse totalAmount;

/// Create a copy of TransactionItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionItemModelCopyWith<_TransactionItemModel> get copyWith => __$TransactionItemModelCopyWithImpl<_TransactionItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionItemModel&&(identical(other.name, name) || other.name == name)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,quantity,price,totalAmount);

@override
String toString() {
  return 'TransactionItemModel(name: $name, quantity: $quantity, price: $price, totalAmount: $totalAmount)';
}


}

/// @nodoc
abstract mixin class _$TransactionItemModelCopyWith<$Res> implements $TransactionItemModelCopyWith<$Res> {
  factory _$TransactionItemModelCopyWith(_TransactionItemModel value, $Res Function(_TransactionItemModel) _then) = __$TransactionItemModelCopyWithImpl;
@override @useResult
$Res call({
 String name, int quantity, MoneyResponse price,@JsonKey(name: 'total_amount') MoneyResponse totalAmount
});




}
/// @nodoc
class __$TransactionItemModelCopyWithImpl<$Res>
    implements _$TransactionItemModelCopyWith<$Res> {
  __$TransactionItemModelCopyWithImpl(this._self, this._then);

  final _TransactionItemModel _self;
  final $Res Function(_TransactionItemModel) _then;

/// Create a copy of TransactionItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? quantity = null,Object? price = null,Object? totalAmount = null,}) {
  return _then(_TransactionItemModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as MoneyResponse,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as MoneyResponse,
  ));
}


}

// dart format on
