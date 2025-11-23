// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TransactionFormEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionFormEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionFormEvent()';
}


}

/// @nodoc
class $TransactionFormEventCopyWith<$Res>  {
$TransactionFormEventCopyWith(TransactionFormEvent _, $Res Function(TransactionFormEvent) __);
}


/// Adds pattern-matching-related methods to [TransactionFormEvent].
extension TransactionFormEventPatterns on TransactionFormEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InitializeEvent value)?  initialize,TResult Function( _TypeChangedEvent value)?  typeChanged,TResult Function( _CategoryChangedEvent value)?  categoryChanged,TResult Function( _StoreNameChangedEvent value)?  storeNameChanged,TResult Function( _DateChangedEvent value)?  dateChanged,TResult Function( _NoteChangedEvent value)?  noteChanged,TResult Function( _TaxAmountChangedEvent value)?  taxAmountChanged,TResult Function( _TotalAmountChangedEvent value)?  totalAmountChanged,TResult Function( _SubmitEvent value)?  submit,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InitializeEvent() when initialize != null:
return initialize(_that);case _TypeChangedEvent() when typeChanged != null:
return typeChanged(_that);case _CategoryChangedEvent() when categoryChanged != null:
return categoryChanged(_that);case _StoreNameChangedEvent() when storeNameChanged != null:
return storeNameChanged(_that);case _DateChangedEvent() when dateChanged != null:
return dateChanged(_that);case _NoteChangedEvent() when noteChanged != null:
return noteChanged(_that);case _TaxAmountChangedEvent() when taxAmountChanged != null:
return taxAmountChanged(_that);case _TotalAmountChangedEvent() when totalAmountChanged != null:
return totalAmountChanged(_that);case _SubmitEvent() when submit != null:
return submit(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InitializeEvent value)  initialize,required TResult Function( _TypeChangedEvent value)  typeChanged,required TResult Function( _CategoryChangedEvent value)  categoryChanged,required TResult Function( _StoreNameChangedEvent value)  storeNameChanged,required TResult Function( _DateChangedEvent value)  dateChanged,required TResult Function( _NoteChangedEvent value)  noteChanged,required TResult Function( _TaxAmountChangedEvent value)  taxAmountChanged,required TResult Function( _TotalAmountChangedEvent value)  totalAmountChanged,required TResult Function( _SubmitEvent value)  submit,}){
final _that = this;
switch (_that) {
case _InitializeEvent():
return initialize(_that);case _TypeChangedEvent():
return typeChanged(_that);case _CategoryChangedEvent():
return categoryChanged(_that);case _StoreNameChangedEvent():
return storeNameChanged(_that);case _DateChangedEvent():
return dateChanged(_that);case _NoteChangedEvent():
return noteChanged(_that);case _TaxAmountChangedEvent():
return taxAmountChanged(_that);case _TotalAmountChangedEvent():
return totalAmountChanged(_that);case _SubmitEvent():
return submit(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InitializeEvent value)?  initialize,TResult? Function( _TypeChangedEvent value)?  typeChanged,TResult? Function( _CategoryChangedEvent value)?  categoryChanged,TResult? Function( _StoreNameChangedEvent value)?  storeNameChanged,TResult? Function( _DateChangedEvent value)?  dateChanged,TResult? Function( _NoteChangedEvent value)?  noteChanged,TResult? Function( _TaxAmountChangedEvent value)?  taxAmountChanged,TResult? Function( _TotalAmountChangedEvent value)?  totalAmountChanged,TResult? Function( _SubmitEvent value)?  submit,}){
final _that = this;
switch (_that) {
case _InitializeEvent() when initialize != null:
return initialize(_that);case _TypeChangedEvent() when typeChanged != null:
return typeChanged(_that);case _CategoryChangedEvent() when categoryChanged != null:
return categoryChanged(_that);case _StoreNameChangedEvent() when storeNameChanged != null:
return storeNameChanged(_that);case _DateChangedEvent() when dateChanged != null:
return dateChanged(_that);case _NoteChangedEvent() when noteChanged != null:
return noteChanged(_that);case _TaxAmountChangedEvent() when taxAmountChanged != null:
return taxAmountChanged(_that);case _TotalAmountChangedEvent() when totalAmountChanged != null:
return totalAmountChanged(_that);case _SubmitEvent() when submit != null:
return submit(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int? transactionId)?  initialize,TResult Function( TransactionType type)?  typeChanged,TResult Function( CategoryEntity category)?  categoryChanged,TResult Function( String storeName)?  storeNameChanged,TResult Function( DateTime date)?  dateChanged,TResult Function( String note)?  noteChanged,TResult Function( String taxAmount)?  taxAmountChanged,TResult Function( String totalAmount)?  totalAmountChanged,TResult Function()?  submit,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InitializeEvent() when initialize != null:
return initialize(_that.transactionId);case _TypeChangedEvent() when typeChanged != null:
return typeChanged(_that.type);case _CategoryChangedEvent() when categoryChanged != null:
return categoryChanged(_that.category);case _StoreNameChangedEvent() when storeNameChanged != null:
return storeNameChanged(_that.storeName);case _DateChangedEvent() when dateChanged != null:
return dateChanged(_that.date);case _NoteChangedEvent() when noteChanged != null:
return noteChanged(_that.note);case _TaxAmountChangedEvent() when taxAmountChanged != null:
return taxAmountChanged(_that.taxAmount);case _TotalAmountChangedEvent() when totalAmountChanged != null:
return totalAmountChanged(_that.totalAmount);case _SubmitEvent() when submit != null:
return submit();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int? transactionId)  initialize,required TResult Function( TransactionType type)  typeChanged,required TResult Function( CategoryEntity category)  categoryChanged,required TResult Function( String storeName)  storeNameChanged,required TResult Function( DateTime date)  dateChanged,required TResult Function( String note)  noteChanged,required TResult Function( String taxAmount)  taxAmountChanged,required TResult Function( String totalAmount)  totalAmountChanged,required TResult Function()  submit,}) {final _that = this;
switch (_that) {
case _InitializeEvent():
return initialize(_that.transactionId);case _TypeChangedEvent():
return typeChanged(_that.type);case _CategoryChangedEvent():
return categoryChanged(_that.category);case _StoreNameChangedEvent():
return storeNameChanged(_that.storeName);case _DateChangedEvent():
return dateChanged(_that.date);case _NoteChangedEvent():
return noteChanged(_that.note);case _TaxAmountChangedEvent():
return taxAmountChanged(_that.taxAmount);case _TotalAmountChangedEvent():
return totalAmountChanged(_that.totalAmount);case _SubmitEvent():
return submit();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int? transactionId)?  initialize,TResult? Function( TransactionType type)?  typeChanged,TResult? Function( CategoryEntity category)?  categoryChanged,TResult? Function( String storeName)?  storeNameChanged,TResult? Function( DateTime date)?  dateChanged,TResult? Function( String note)?  noteChanged,TResult? Function( String taxAmount)?  taxAmountChanged,TResult? Function( String totalAmount)?  totalAmountChanged,TResult? Function()?  submit,}) {final _that = this;
switch (_that) {
case _InitializeEvent() when initialize != null:
return initialize(_that.transactionId);case _TypeChangedEvent() when typeChanged != null:
return typeChanged(_that.type);case _CategoryChangedEvent() when categoryChanged != null:
return categoryChanged(_that.category);case _StoreNameChangedEvent() when storeNameChanged != null:
return storeNameChanged(_that.storeName);case _DateChangedEvent() when dateChanged != null:
return dateChanged(_that.date);case _NoteChangedEvent() when noteChanged != null:
return noteChanged(_that.note);case _TaxAmountChangedEvent() when taxAmountChanged != null:
return taxAmountChanged(_that.taxAmount);case _TotalAmountChangedEvent() when totalAmountChanged != null:
return totalAmountChanged(_that.totalAmount);case _SubmitEvent() when submit != null:
return submit();case _:
  return null;

}
}

}

/// @nodoc


class _InitializeEvent implements TransactionFormEvent {
  const _InitializeEvent(this.transactionId);
  

 final  int? transactionId;

/// Create a copy of TransactionFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitializeEventCopyWith<_InitializeEvent> get copyWith => __$InitializeEventCopyWithImpl<_InitializeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InitializeEvent&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId));
}


@override
int get hashCode => Object.hash(runtimeType,transactionId);

@override
String toString() {
  return 'TransactionFormEvent.initialize(transactionId: $transactionId)';
}


}

/// @nodoc
abstract mixin class _$InitializeEventCopyWith<$Res> implements $TransactionFormEventCopyWith<$Res> {
  factory _$InitializeEventCopyWith(_InitializeEvent value, $Res Function(_InitializeEvent) _then) = __$InitializeEventCopyWithImpl;
@useResult
$Res call({
 int? transactionId
});




}
/// @nodoc
class __$InitializeEventCopyWithImpl<$Res>
    implements _$InitializeEventCopyWith<$Res> {
  __$InitializeEventCopyWithImpl(this._self, this._then);

  final _InitializeEvent _self;
  final $Res Function(_InitializeEvent) _then;

/// Create a copy of TransactionFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? transactionId = freezed,}) {
  return _then(_InitializeEvent(
freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class _TypeChangedEvent implements TransactionFormEvent {
  const _TypeChangedEvent(this.type);
  

 final  TransactionType type;

/// Create a copy of TransactionFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TypeChangedEventCopyWith<_TypeChangedEvent> get copyWith => __$TypeChangedEventCopyWithImpl<_TypeChangedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TypeChangedEvent&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,type);

@override
String toString() {
  return 'TransactionFormEvent.typeChanged(type: $type)';
}


}

/// @nodoc
abstract mixin class _$TypeChangedEventCopyWith<$Res> implements $TransactionFormEventCopyWith<$Res> {
  factory _$TypeChangedEventCopyWith(_TypeChangedEvent value, $Res Function(_TypeChangedEvent) _then) = __$TypeChangedEventCopyWithImpl;
@useResult
$Res call({
 TransactionType type
});




}
/// @nodoc
class __$TypeChangedEventCopyWithImpl<$Res>
    implements _$TypeChangedEventCopyWith<$Res> {
  __$TypeChangedEventCopyWithImpl(this._self, this._then);

  final _TypeChangedEvent _self;
  final $Res Function(_TypeChangedEvent) _then;

/// Create a copy of TransactionFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? type = null,}) {
  return _then(_TypeChangedEvent(
null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TransactionType,
  ));
}


}

/// @nodoc


class _CategoryChangedEvent implements TransactionFormEvent {
  const _CategoryChangedEvent(this.category);
  

 final  CategoryEntity category;

/// Create a copy of TransactionFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryChangedEventCopyWith<_CategoryChangedEvent> get copyWith => __$CategoryChangedEventCopyWithImpl<_CategoryChangedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryChangedEvent&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,category);

@override
String toString() {
  return 'TransactionFormEvent.categoryChanged(category: $category)';
}


}

/// @nodoc
abstract mixin class _$CategoryChangedEventCopyWith<$Res> implements $TransactionFormEventCopyWith<$Res> {
  factory _$CategoryChangedEventCopyWith(_CategoryChangedEvent value, $Res Function(_CategoryChangedEvent) _then) = __$CategoryChangedEventCopyWithImpl;
@useResult
$Res call({
 CategoryEntity category
});


$CategoryEntityCopyWith<$Res> get category;

}
/// @nodoc
class __$CategoryChangedEventCopyWithImpl<$Res>
    implements _$CategoryChangedEventCopyWith<$Res> {
  __$CategoryChangedEventCopyWithImpl(this._self, this._then);

  final _CategoryChangedEvent _self;
  final $Res Function(_CategoryChangedEvent) _then;

/// Create a copy of TransactionFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? category = null,}) {
  return _then(_CategoryChangedEvent(
null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CategoryEntity,
  ));
}

/// Create a copy of TransactionFormEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryEntityCopyWith<$Res> get category {
  
  return $CategoryEntityCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}

/// @nodoc


class _StoreNameChangedEvent implements TransactionFormEvent {
  const _StoreNameChangedEvent(this.storeName);
  

 final  String storeName;

/// Create a copy of TransactionFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreNameChangedEventCopyWith<_StoreNameChangedEvent> get copyWith => __$StoreNameChangedEventCopyWithImpl<_StoreNameChangedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreNameChangedEvent&&(identical(other.storeName, storeName) || other.storeName == storeName));
}


@override
int get hashCode => Object.hash(runtimeType,storeName);

@override
String toString() {
  return 'TransactionFormEvent.storeNameChanged(storeName: $storeName)';
}


}

/// @nodoc
abstract mixin class _$StoreNameChangedEventCopyWith<$Res> implements $TransactionFormEventCopyWith<$Res> {
  factory _$StoreNameChangedEventCopyWith(_StoreNameChangedEvent value, $Res Function(_StoreNameChangedEvent) _then) = __$StoreNameChangedEventCopyWithImpl;
@useResult
$Res call({
 String storeName
});




}
/// @nodoc
class __$StoreNameChangedEventCopyWithImpl<$Res>
    implements _$StoreNameChangedEventCopyWith<$Res> {
  __$StoreNameChangedEventCopyWithImpl(this._self, this._then);

  final _StoreNameChangedEvent _self;
  final $Res Function(_StoreNameChangedEvent) _then;

/// Create a copy of TransactionFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? storeName = null,}) {
  return _then(_StoreNameChangedEvent(
null == storeName ? _self.storeName : storeName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _DateChangedEvent implements TransactionFormEvent {
  const _DateChangedEvent(this.date);
  

 final  DateTime date;

/// Create a copy of TransactionFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DateChangedEventCopyWith<_DateChangedEvent> get copyWith => __$DateChangedEventCopyWithImpl<_DateChangedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DateChangedEvent&&(identical(other.date, date) || other.date == date));
}


@override
int get hashCode => Object.hash(runtimeType,date);

@override
String toString() {
  return 'TransactionFormEvent.dateChanged(date: $date)';
}


}

/// @nodoc
abstract mixin class _$DateChangedEventCopyWith<$Res> implements $TransactionFormEventCopyWith<$Res> {
  factory _$DateChangedEventCopyWith(_DateChangedEvent value, $Res Function(_DateChangedEvent) _then) = __$DateChangedEventCopyWithImpl;
@useResult
$Res call({
 DateTime date
});




}
/// @nodoc
class __$DateChangedEventCopyWithImpl<$Res>
    implements _$DateChangedEventCopyWith<$Res> {
  __$DateChangedEventCopyWithImpl(this._self, this._then);

  final _DateChangedEvent _self;
  final $Res Function(_DateChangedEvent) _then;

/// Create a copy of TransactionFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? date = null,}) {
  return _then(_DateChangedEvent(
null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc


class _NoteChangedEvent implements TransactionFormEvent {
  const _NoteChangedEvent(this.note);
  

 final  String note;

/// Create a copy of TransactionFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NoteChangedEventCopyWith<_NoteChangedEvent> get copyWith => __$NoteChangedEventCopyWithImpl<_NoteChangedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NoteChangedEvent&&(identical(other.note, note) || other.note == note));
}


@override
int get hashCode => Object.hash(runtimeType,note);

@override
String toString() {
  return 'TransactionFormEvent.noteChanged(note: $note)';
}


}

/// @nodoc
abstract mixin class _$NoteChangedEventCopyWith<$Res> implements $TransactionFormEventCopyWith<$Res> {
  factory _$NoteChangedEventCopyWith(_NoteChangedEvent value, $Res Function(_NoteChangedEvent) _then) = __$NoteChangedEventCopyWithImpl;
@useResult
$Res call({
 String note
});




}
/// @nodoc
class __$NoteChangedEventCopyWithImpl<$Res>
    implements _$NoteChangedEventCopyWith<$Res> {
  __$NoteChangedEventCopyWithImpl(this._self, this._then);

  final _NoteChangedEvent _self;
  final $Res Function(_NoteChangedEvent) _then;

/// Create a copy of TransactionFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? note = null,}) {
  return _then(_NoteChangedEvent(
null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _TaxAmountChangedEvent implements TransactionFormEvent {
  const _TaxAmountChangedEvent(this.taxAmount);
  

 final  String taxAmount;

/// Create a copy of TransactionFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaxAmountChangedEventCopyWith<_TaxAmountChangedEvent> get copyWith => __$TaxAmountChangedEventCopyWithImpl<_TaxAmountChangedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaxAmountChangedEvent&&(identical(other.taxAmount, taxAmount) || other.taxAmount == taxAmount));
}


@override
int get hashCode => Object.hash(runtimeType,taxAmount);

@override
String toString() {
  return 'TransactionFormEvent.taxAmountChanged(taxAmount: $taxAmount)';
}


}

/// @nodoc
abstract mixin class _$TaxAmountChangedEventCopyWith<$Res> implements $TransactionFormEventCopyWith<$Res> {
  factory _$TaxAmountChangedEventCopyWith(_TaxAmountChangedEvent value, $Res Function(_TaxAmountChangedEvent) _then) = __$TaxAmountChangedEventCopyWithImpl;
@useResult
$Res call({
 String taxAmount
});




}
/// @nodoc
class __$TaxAmountChangedEventCopyWithImpl<$Res>
    implements _$TaxAmountChangedEventCopyWith<$Res> {
  __$TaxAmountChangedEventCopyWithImpl(this._self, this._then);

  final _TaxAmountChangedEvent _self;
  final $Res Function(_TaxAmountChangedEvent) _then;

/// Create a copy of TransactionFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? taxAmount = null,}) {
  return _then(_TaxAmountChangedEvent(
null == taxAmount ? _self.taxAmount : taxAmount // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _TotalAmountChangedEvent implements TransactionFormEvent {
  const _TotalAmountChangedEvent(this.totalAmount);
  

 final  String totalAmount;

/// Create a copy of TransactionFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TotalAmountChangedEventCopyWith<_TotalAmountChangedEvent> get copyWith => __$TotalAmountChangedEventCopyWithImpl<_TotalAmountChangedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TotalAmountChangedEvent&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount));
}


@override
int get hashCode => Object.hash(runtimeType,totalAmount);

@override
String toString() {
  return 'TransactionFormEvent.totalAmountChanged(totalAmount: $totalAmount)';
}


}

/// @nodoc
abstract mixin class _$TotalAmountChangedEventCopyWith<$Res> implements $TransactionFormEventCopyWith<$Res> {
  factory _$TotalAmountChangedEventCopyWith(_TotalAmountChangedEvent value, $Res Function(_TotalAmountChangedEvent) _then) = __$TotalAmountChangedEventCopyWithImpl;
@useResult
$Res call({
 String totalAmount
});




}
/// @nodoc
class __$TotalAmountChangedEventCopyWithImpl<$Res>
    implements _$TotalAmountChangedEventCopyWith<$Res> {
  __$TotalAmountChangedEventCopyWithImpl(this._self, this._then);

  final _TotalAmountChangedEvent _self;
  final $Res Function(_TotalAmountChangedEvent) _then;

/// Create a copy of TransactionFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? totalAmount = null,}) {
  return _then(_TotalAmountChangedEvent(
null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SubmitEvent implements TransactionFormEvent {
  const _SubmitEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionFormEvent.submit()';
}


}




/// @nodoc
mixin _$TransactionFormState {

 int? get transactionId; SubmissionStatus get status; TransactionFormData get form; String? get message; Map<String, dynamic>? get errors;
/// Create a copy of TransactionFormState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionFormStateCopyWith<TransactionFormState> get copyWith => _$TransactionFormStateCopyWithImpl<TransactionFormState>(this as TransactionFormState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionFormState&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.status, status) || other.status == status)&&(identical(other.form, form) || other.form == form)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.errors, errors));
}


@override
int get hashCode => Object.hash(runtimeType,transactionId,status,form,message,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'TransactionFormState(transactionId: $transactionId, status: $status, form: $form, message: $message, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $TransactionFormStateCopyWith<$Res>  {
  factory $TransactionFormStateCopyWith(TransactionFormState value, $Res Function(TransactionFormState) _then) = _$TransactionFormStateCopyWithImpl;
@useResult
$Res call({
 int? transactionId, SubmissionStatus status, TransactionFormData form, String? message, Map<String, dynamic>? errors
});


$TransactionFormDataCopyWith<$Res> get form;

}
/// @nodoc
class _$TransactionFormStateCopyWithImpl<$Res>
    implements $TransactionFormStateCopyWith<$Res> {
  _$TransactionFormStateCopyWithImpl(this._self, this._then);

  final TransactionFormState _self;
  final $Res Function(TransactionFormState) _then;

/// Create a copy of TransactionFormState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionId = freezed,Object? status = null,Object? form = null,Object? message = freezed,Object? errors = freezed,}) {
  return _then(_self.copyWith(
transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SubmissionStatus,form: null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as TransactionFormData,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}
/// Create a copy of TransactionFormState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionFormDataCopyWith<$Res> get form {
  
  return $TransactionFormDataCopyWith<$Res>(_self.form, (value) {
    return _then(_self.copyWith(form: value));
  });
}
}


/// Adds pattern-matching-related methods to [TransactionFormState].
extension TransactionFormStatePatterns on TransactionFormState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionFormState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionFormState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionFormState value)  $default,){
final _that = this;
switch (_that) {
case _TransactionFormState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionFormState value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionFormState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? transactionId,  SubmissionStatus status,  TransactionFormData form,  String? message,  Map<String, dynamic>? errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionFormState() when $default != null:
return $default(_that.transactionId,_that.status,_that.form,_that.message,_that.errors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? transactionId,  SubmissionStatus status,  TransactionFormData form,  String? message,  Map<String, dynamic>? errors)  $default,) {final _that = this;
switch (_that) {
case _TransactionFormState():
return $default(_that.transactionId,_that.status,_that.form,_that.message,_that.errors);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? transactionId,  SubmissionStatus status,  TransactionFormData form,  String? message,  Map<String, dynamic>? errors)?  $default,) {final _that = this;
switch (_that) {
case _TransactionFormState() when $default != null:
return $default(_that.transactionId,_that.status,_that.form,_that.message,_that.errors);case _:
  return null;

}
}

}

/// @nodoc


class _TransactionFormState extends TransactionFormState {
  const _TransactionFormState({this.transactionId, this.status = SubmissionStatus.initial, this.form = const TransactionFormData(), this.message, final  Map<String, dynamic>? errors}): _errors = errors,super._();
  

@override final  int? transactionId;
@override@JsonKey() final  SubmissionStatus status;
@override@JsonKey() final  TransactionFormData form;
@override final  String? message;
 final  Map<String, dynamic>? _errors;
@override Map<String, dynamic>? get errors {
  final value = _errors;
  if (value == null) return null;
  if (_errors is EqualUnmodifiableMapView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of TransactionFormState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionFormStateCopyWith<_TransactionFormState> get copyWith => __$TransactionFormStateCopyWithImpl<_TransactionFormState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionFormState&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.status, status) || other.status == status)&&(identical(other.form, form) || other.form == form)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._errors, _errors));
}


@override
int get hashCode => Object.hash(runtimeType,transactionId,status,form,message,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'TransactionFormState(transactionId: $transactionId, status: $status, form: $form, message: $message, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$TransactionFormStateCopyWith<$Res> implements $TransactionFormStateCopyWith<$Res> {
  factory _$TransactionFormStateCopyWith(_TransactionFormState value, $Res Function(_TransactionFormState) _then) = __$TransactionFormStateCopyWithImpl;
@override @useResult
$Res call({
 int? transactionId, SubmissionStatus status, TransactionFormData form, String? message, Map<String, dynamic>? errors
});


@override $TransactionFormDataCopyWith<$Res> get form;

}
/// @nodoc
class __$TransactionFormStateCopyWithImpl<$Res>
    implements _$TransactionFormStateCopyWith<$Res> {
  __$TransactionFormStateCopyWithImpl(this._self, this._then);

  final _TransactionFormState _self;
  final $Res Function(_TransactionFormState) _then;

/// Create a copy of TransactionFormState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionId = freezed,Object? status = null,Object? form = null,Object? message = freezed,Object? errors = freezed,}) {
  return _then(_TransactionFormState(
transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SubmissionStatus,form: null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as TransactionFormData,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,errors: freezed == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

/// Create a copy of TransactionFormState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionFormDataCopyWith<$Res> get form {
  
  return $TransactionFormDataCopyWith<$Res>(_self.form, (value) {
    return _then(_self.copyWith(form: value));
  });
}
}

/// @nodoc
mixin _$TransactionFormData {

 int? get id; TransactionType? get type; CategoryEntity? get category; WalletViewEntity? get wallet; String? get storeName; DateTime? get date; String? get note; String? get taxAmount; String? get totalAmount;
/// Create a copy of TransactionFormData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionFormDataCopyWith<TransactionFormData> get copyWith => _$TransactionFormDataCopyWithImpl<TransactionFormData>(this as TransactionFormData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionFormData&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.category, category) || other.category == category)&&(identical(other.wallet, wallet) || other.wallet == wallet)&&(identical(other.storeName, storeName) || other.storeName == storeName)&&(identical(other.date, date) || other.date == date)&&(identical(other.note, note) || other.note == note)&&(identical(other.taxAmount, taxAmount) || other.taxAmount == taxAmount)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,category,wallet,storeName,date,note,taxAmount,totalAmount);

@override
String toString() {
  return 'TransactionFormData(id: $id, type: $type, category: $category, wallet: $wallet, storeName: $storeName, date: $date, note: $note, taxAmount: $taxAmount, totalAmount: $totalAmount)';
}


}

/// @nodoc
abstract mixin class $TransactionFormDataCopyWith<$Res>  {
  factory $TransactionFormDataCopyWith(TransactionFormData value, $Res Function(TransactionFormData) _then) = _$TransactionFormDataCopyWithImpl;
@useResult
$Res call({
 int? id, TransactionType? type, CategoryEntity? category, WalletViewEntity? wallet, String? storeName, DateTime? date, String? note, String? taxAmount, String? totalAmount
});


$CategoryEntityCopyWith<$Res>? get category;$WalletViewEntityCopyWith<$Res>? get wallet;

}
/// @nodoc
class _$TransactionFormDataCopyWithImpl<$Res>
    implements $TransactionFormDataCopyWith<$Res> {
  _$TransactionFormDataCopyWithImpl(this._self, this._then);

  final TransactionFormData _self;
  final $Res Function(TransactionFormData) _then;

/// Create a copy of TransactionFormData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? type = freezed,Object? category = freezed,Object? wallet = freezed,Object? storeName = freezed,Object? date = freezed,Object? note = freezed,Object? taxAmount = freezed,Object? totalAmount = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TransactionType?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CategoryEntity?,wallet: freezed == wallet ? _self.wallet : wallet // ignore: cast_nullable_to_non_nullable
as WalletViewEntity?,storeName: freezed == storeName ? _self.storeName : storeName // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,taxAmount: freezed == taxAmount ? _self.taxAmount : taxAmount // ignore: cast_nullable_to_non_nullable
as String?,totalAmount: freezed == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of TransactionFormData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryEntityCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $CategoryEntityCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of TransactionFormData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WalletViewEntityCopyWith<$Res>? get wallet {
    if (_self.wallet == null) {
    return null;
  }

  return $WalletViewEntityCopyWith<$Res>(_self.wallet!, (value) {
    return _then(_self.copyWith(wallet: value));
  });
}
}


/// Adds pattern-matching-related methods to [TransactionFormData].
extension TransactionFormDataPatterns on TransactionFormData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionFormData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionFormData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionFormData value)  $default,){
final _that = this;
switch (_that) {
case _TransactionFormData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionFormData value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionFormData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  TransactionType? type,  CategoryEntity? category,  WalletViewEntity? wallet,  String? storeName,  DateTime? date,  String? note,  String? taxAmount,  String? totalAmount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionFormData() when $default != null:
return $default(_that.id,_that.type,_that.category,_that.wallet,_that.storeName,_that.date,_that.note,_that.taxAmount,_that.totalAmount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  TransactionType? type,  CategoryEntity? category,  WalletViewEntity? wallet,  String? storeName,  DateTime? date,  String? note,  String? taxAmount,  String? totalAmount)  $default,) {final _that = this;
switch (_that) {
case _TransactionFormData():
return $default(_that.id,_that.type,_that.category,_that.wallet,_that.storeName,_that.date,_that.note,_that.taxAmount,_that.totalAmount);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  TransactionType? type,  CategoryEntity? category,  WalletViewEntity? wallet,  String? storeName,  DateTime? date,  String? note,  String? taxAmount,  String? totalAmount)?  $default,) {final _that = this;
switch (_that) {
case _TransactionFormData() when $default != null:
return $default(_that.id,_that.type,_that.category,_that.wallet,_that.storeName,_that.date,_that.note,_that.taxAmount,_that.totalAmount);case _:
  return null;

}
}

}

/// @nodoc


class _TransactionFormData extends TransactionFormData {
  const _TransactionFormData({this.id, this.type, this.category, this.wallet, this.storeName, this.date, this.note, this.taxAmount, this.totalAmount}): super._();
  

@override final  int? id;
@override final  TransactionType? type;
@override final  CategoryEntity? category;
@override final  WalletViewEntity? wallet;
@override final  String? storeName;
@override final  DateTime? date;
@override final  String? note;
@override final  String? taxAmount;
@override final  String? totalAmount;

/// Create a copy of TransactionFormData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionFormDataCopyWith<_TransactionFormData> get copyWith => __$TransactionFormDataCopyWithImpl<_TransactionFormData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionFormData&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.category, category) || other.category == category)&&(identical(other.wallet, wallet) || other.wallet == wallet)&&(identical(other.storeName, storeName) || other.storeName == storeName)&&(identical(other.date, date) || other.date == date)&&(identical(other.note, note) || other.note == note)&&(identical(other.taxAmount, taxAmount) || other.taxAmount == taxAmount)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,category,wallet,storeName,date,note,taxAmount,totalAmount);

@override
String toString() {
  return 'TransactionFormData(id: $id, type: $type, category: $category, wallet: $wallet, storeName: $storeName, date: $date, note: $note, taxAmount: $taxAmount, totalAmount: $totalAmount)';
}


}

/// @nodoc
abstract mixin class _$TransactionFormDataCopyWith<$Res> implements $TransactionFormDataCopyWith<$Res> {
  factory _$TransactionFormDataCopyWith(_TransactionFormData value, $Res Function(_TransactionFormData) _then) = __$TransactionFormDataCopyWithImpl;
@override @useResult
$Res call({
 int? id, TransactionType? type, CategoryEntity? category, WalletViewEntity? wallet, String? storeName, DateTime? date, String? note, String? taxAmount, String? totalAmount
});


@override $CategoryEntityCopyWith<$Res>? get category;@override $WalletViewEntityCopyWith<$Res>? get wallet;

}
/// @nodoc
class __$TransactionFormDataCopyWithImpl<$Res>
    implements _$TransactionFormDataCopyWith<$Res> {
  __$TransactionFormDataCopyWithImpl(this._self, this._then);

  final _TransactionFormData _self;
  final $Res Function(_TransactionFormData) _then;

/// Create a copy of TransactionFormData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? type = freezed,Object? category = freezed,Object? wallet = freezed,Object? storeName = freezed,Object? date = freezed,Object? note = freezed,Object? taxAmount = freezed,Object? totalAmount = freezed,}) {
  return _then(_TransactionFormData(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TransactionType?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CategoryEntity?,wallet: freezed == wallet ? _self.wallet : wallet // ignore: cast_nullable_to_non_nullable
as WalletViewEntity?,storeName: freezed == storeName ? _self.storeName : storeName // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,taxAmount: freezed == taxAmount ? _self.taxAmount : taxAmount // ignore: cast_nullable_to_non_nullable
as String?,totalAmount: freezed == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of TransactionFormData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryEntityCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $CategoryEntityCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of TransactionFormData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WalletViewEntityCopyWith<$Res>? get wallet {
    if (_self.wallet == null) {
    return null;
  }

  return $WalletViewEntityCopyWith<$Res>(_self.wallet!, (value) {
    return _then(_self.copyWith(wallet: value));
  });
}
}

// dart format on
