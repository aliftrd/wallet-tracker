// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TransactionDetailEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionDetailEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionDetailEvent()';
}


}

/// @nodoc
class $TransactionDetailEventCopyWith<$Res>  {
$TransactionDetailEventCopyWith(TransactionDetailEvent _, $Res Function(TransactionDetailEvent) __);
}


/// Adds pattern-matching-related methods to [TransactionDetailEvent].
extension TransactionDetailEventPatterns on TransactionDetailEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InitializeEvent value)?  initialize,TResult Function( _EditEvent value)?  edit,TResult Function( _DeleteEvent value)?  delete,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InitializeEvent() when initialize != null:
return initialize(_that);case _EditEvent() when edit != null:
return edit(_that);case _DeleteEvent() when delete != null:
return delete(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InitializeEvent value)  initialize,required TResult Function( _EditEvent value)  edit,required TResult Function( _DeleteEvent value)  delete,}){
final _that = this;
switch (_that) {
case _InitializeEvent():
return initialize(_that);case _EditEvent():
return edit(_that);case _DeleteEvent():
return delete(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InitializeEvent value)?  initialize,TResult? Function( _EditEvent value)?  edit,TResult? Function( _DeleteEvent value)?  delete,}){
final _that = this;
switch (_that) {
case _InitializeEvent() when initialize != null:
return initialize(_that);case _EditEvent() when edit != null:
return edit(_that);case _DeleteEvent() when delete != null:
return delete(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int transactionId)?  initialize,TResult Function()?  edit,TResult Function()?  delete,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InitializeEvent() when initialize != null:
return initialize(_that.transactionId);case _EditEvent() when edit != null:
return edit();case _DeleteEvent() when delete != null:
return delete();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int transactionId)  initialize,required TResult Function()  edit,required TResult Function()  delete,}) {final _that = this;
switch (_that) {
case _InitializeEvent():
return initialize(_that.transactionId);case _EditEvent():
return edit();case _DeleteEvent():
return delete();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int transactionId)?  initialize,TResult? Function()?  edit,TResult? Function()?  delete,}) {final _that = this;
switch (_that) {
case _InitializeEvent() when initialize != null:
return initialize(_that.transactionId);case _EditEvent() when edit != null:
return edit();case _DeleteEvent() when delete != null:
return delete();case _:
  return null;

}
}

}

/// @nodoc


class _InitializeEvent implements TransactionDetailEvent {
  const _InitializeEvent(this.transactionId);
  

 final  int transactionId;

/// Create a copy of TransactionDetailEvent
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
  return 'TransactionDetailEvent.initialize(transactionId: $transactionId)';
}


}

/// @nodoc
abstract mixin class _$InitializeEventCopyWith<$Res> implements $TransactionDetailEventCopyWith<$Res> {
  factory _$InitializeEventCopyWith(_InitializeEvent value, $Res Function(_InitializeEvent) _then) = __$InitializeEventCopyWithImpl;
@useResult
$Res call({
 int transactionId
});




}
/// @nodoc
class __$InitializeEventCopyWithImpl<$Res>
    implements _$InitializeEventCopyWith<$Res> {
  __$InitializeEventCopyWithImpl(this._self, this._then);

  final _InitializeEvent _self;
  final $Res Function(_InitializeEvent) _then;

/// Create a copy of TransactionDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? transactionId = null,}) {
  return _then(_InitializeEvent(
null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _EditEvent implements TransactionDetailEvent {
  const _EditEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionDetailEvent.edit()';
}


}




/// @nodoc


class _DeleteEvent implements TransactionDetailEvent {
  const _DeleteEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionDetailEvent.delete()';
}


}




/// @nodoc
mixin _$TransactionDetailState {

 SubmissionStatus get status; TransactionOperation get operation; TransactionDetailEntity? get data; String? get message;
/// Create a copy of TransactionDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionDetailStateCopyWith<TransactionDetailState> get copyWith => _$TransactionDetailStateCopyWithImpl<TransactionDetailState>(this as TransactionDetailState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionDetailState&&(identical(other.status, status) || other.status == status)&&(identical(other.operation, operation) || other.operation == operation)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,status,operation,data,message);

@override
String toString() {
  return 'TransactionDetailState(status: $status, operation: $operation, data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class $TransactionDetailStateCopyWith<$Res>  {
  factory $TransactionDetailStateCopyWith(TransactionDetailState value, $Res Function(TransactionDetailState) _then) = _$TransactionDetailStateCopyWithImpl;
@useResult
$Res call({
 SubmissionStatus status, TransactionOperation operation, TransactionDetailEntity? data, String? message
});




}
/// @nodoc
class _$TransactionDetailStateCopyWithImpl<$Res>
    implements $TransactionDetailStateCopyWith<$Res> {
  _$TransactionDetailStateCopyWithImpl(this._self, this._then);

  final TransactionDetailState _self;
  final $Res Function(TransactionDetailState) _then;

/// Create a copy of TransactionDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? operation = null,Object? data = freezed,Object? message = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SubmissionStatus,operation: null == operation ? _self.operation : operation // ignore: cast_nullable_to_non_nullable
as TransactionOperation,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as TransactionDetailEntity?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionDetailState].
extension TransactionDetailStatePatterns on TransactionDetailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionDetailState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionDetailState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionDetailState value)  $default,){
final _that = this;
switch (_that) {
case _TransactionDetailState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionDetailState value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionDetailState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SubmissionStatus status,  TransactionOperation operation,  TransactionDetailEntity? data,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionDetailState() when $default != null:
return $default(_that.status,_that.operation,_that.data,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SubmissionStatus status,  TransactionOperation operation,  TransactionDetailEntity? data,  String? message)  $default,) {final _that = this;
switch (_that) {
case _TransactionDetailState():
return $default(_that.status,_that.operation,_that.data,_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SubmissionStatus status,  TransactionOperation operation,  TransactionDetailEntity? data,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _TransactionDetailState() when $default != null:
return $default(_that.status,_that.operation,_that.data,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _TransactionDetailState extends TransactionDetailState {
  const _TransactionDetailState({this.status = SubmissionStatus.initial, this.operation = TransactionOperation.none, this.data, this.message}): super._();
  

@override@JsonKey() final  SubmissionStatus status;
@override@JsonKey() final  TransactionOperation operation;
@override final  TransactionDetailEntity? data;
@override final  String? message;

/// Create a copy of TransactionDetailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionDetailStateCopyWith<_TransactionDetailState> get copyWith => __$TransactionDetailStateCopyWithImpl<_TransactionDetailState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionDetailState&&(identical(other.status, status) || other.status == status)&&(identical(other.operation, operation) || other.operation == operation)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,status,operation,data,message);

@override
String toString() {
  return 'TransactionDetailState(status: $status, operation: $operation, data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class _$TransactionDetailStateCopyWith<$Res> implements $TransactionDetailStateCopyWith<$Res> {
  factory _$TransactionDetailStateCopyWith(_TransactionDetailState value, $Res Function(_TransactionDetailState) _then) = __$TransactionDetailStateCopyWithImpl;
@override @useResult
$Res call({
 SubmissionStatus status, TransactionOperation operation, TransactionDetailEntity? data, String? message
});




}
/// @nodoc
class __$TransactionDetailStateCopyWithImpl<$Res>
    implements _$TransactionDetailStateCopyWith<$Res> {
  __$TransactionDetailStateCopyWithImpl(this._self, this._then);

  final _TransactionDetailState _self;
  final $Res Function(_TransactionDetailState) _then;

/// Create a copy of TransactionDetailState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? operation = null,Object? data = freezed,Object? message = freezed,}) {
  return _then(_TransactionDetailState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SubmissionStatus,operation: null == operation ? _self.operation : operation // ignore: cast_nullable_to_non_nullable
as TransactionOperation,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as TransactionDetailEntity?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
