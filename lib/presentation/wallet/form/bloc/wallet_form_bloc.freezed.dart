// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WalletFormEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletFormEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WalletFormEvent()';
}


}

/// @nodoc
class $WalletFormEventCopyWith<$Res>  {
$WalletFormEventCopyWith(WalletFormEvent _, $Res Function(WalletFormEvent) __);
}


/// Adds pattern-matching-related methods to [WalletFormEvent].
extension WalletFormEventPatterns on WalletFormEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InitializeEvent value)?  initialize,TResult Function( _SubmitEvent value)?  submit,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InitializeEvent() when initialize != null:
return initialize(_that);case _SubmitEvent() when submit != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InitializeEvent value)  initialize,required TResult Function( _SubmitEvent value)  submit,}){
final _that = this;
switch (_that) {
case _InitializeEvent():
return initialize(_that);case _SubmitEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InitializeEvent value)?  initialize,TResult? Function( _SubmitEvent value)?  submit,}){
final _that = this;
switch (_that) {
case _InitializeEvent() when initialize != null:
return initialize(_that);case _SubmitEvent() when submit != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int? walletId)?  initialize,TResult Function()?  submit,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InitializeEvent() when initialize != null:
return initialize(_that.walletId);case _SubmitEvent() when submit != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int? walletId)  initialize,required TResult Function()  submit,}) {final _that = this;
switch (_that) {
case _InitializeEvent():
return initialize(_that.walletId);case _SubmitEvent():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int? walletId)?  initialize,TResult? Function()?  submit,}) {final _that = this;
switch (_that) {
case _InitializeEvent() when initialize != null:
return initialize(_that.walletId);case _SubmitEvent() when submit != null:
return submit();case _:
  return null;

}
}

}

/// @nodoc


class _InitializeEvent implements WalletFormEvent {
  const _InitializeEvent(this.walletId);
  

 final  int? walletId;

/// Create a copy of WalletFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitializeEventCopyWith<_InitializeEvent> get copyWith => __$InitializeEventCopyWithImpl<_InitializeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InitializeEvent&&(identical(other.walletId, walletId) || other.walletId == walletId));
}


@override
int get hashCode => Object.hash(runtimeType,walletId);

@override
String toString() {
  return 'WalletFormEvent.initialize(walletId: $walletId)';
}


}

/// @nodoc
abstract mixin class _$InitializeEventCopyWith<$Res> implements $WalletFormEventCopyWith<$Res> {
  factory _$InitializeEventCopyWith(_InitializeEvent value, $Res Function(_InitializeEvent) _then) = __$InitializeEventCopyWithImpl;
@useResult
$Res call({
 int? walletId
});




}
/// @nodoc
class __$InitializeEventCopyWithImpl<$Res>
    implements _$InitializeEventCopyWith<$Res> {
  __$InitializeEventCopyWithImpl(this._self, this._then);

  final _InitializeEvent _self;
  final $Res Function(_InitializeEvent) _then;

/// Create a copy of WalletFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? walletId = freezed,}) {
  return _then(_InitializeEvent(
freezed == walletId ? _self.walletId : walletId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class _SubmitEvent implements WalletFormEvent {
  const _SubmitEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WalletFormEvent.submit()';
}


}




/// @nodoc
mixin _$WalletFormState {

 SubmissionStatus get status; int? get selectedWalletId; WalletFormData get form; String? get message; Map<String, dynamic>? get errors;
/// Create a copy of WalletFormState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletFormStateCopyWith<WalletFormState> get copyWith => _$WalletFormStateCopyWithImpl<WalletFormState>(this as WalletFormState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletFormState&&(identical(other.status, status) || other.status == status)&&(identical(other.selectedWalletId, selectedWalletId) || other.selectedWalletId == selectedWalletId)&&(identical(other.form, form) || other.form == form)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.errors, errors));
}


@override
int get hashCode => Object.hash(runtimeType,status,selectedWalletId,form,message,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'WalletFormState(status: $status, selectedWalletId: $selectedWalletId, form: $form, message: $message, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $WalletFormStateCopyWith<$Res>  {
  factory $WalletFormStateCopyWith(WalletFormState value, $Res Function(WalletFormState) _then) = _$WalletFormStateCopyWithImpl;
@useResult
$Res call({
 SubmissionStatus status, int? selectedWalletId, WalletFormData form, String? message, Map<String, dynamic>? errors
});


$WalletFormDataCopyWith<$Res> get form;

}
/// @nodoc
class _$WalletFormStateCopyWithImpl<$Res>
    implements $WalletFormStateCopyWith<$Res> {
  _$WalletFormStateCopyWithImpl(this._self, this._then);

  final WalletFormState _self;
  final $Res Function(WalletFormState) _then;

/// Create a copy of WalletFormState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? selectedWalletId = freezed,Object? form = null,Object? message = freezed,Object? errors = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SubmissionStatus,selectedWalletId: freezed == selectedWalletId ? _self.selectedWalletId : selectedWalletId // ignore: cast_nullable_to_non_nullable
as int?,form: null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as WalletFormData,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}
/// Create a copy of WalletFormState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WalletFormDataCopyWith<$Res> get form {
  
  return $WalletFormDataCopyWith<$Res>(_self.form, (value) {
    return _then(_self.copyWith(form: value));
  });
}
}


/// Adds pattern-matching-related methods to [WalletFormState].
extension WalletFormStatePatterns on WalletFormState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletFormState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletFormState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletFormState value)  $default,){
final _that = this;
switch (_that) {
case _WalletFormState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletFormState value)?  $default,){
final _that = this;
switch (_that) {
case _WalletFormState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SubmissionStatus status,  int? selectedWalletId,  WalletFormData form,  String? message,  Map<String, dynamic>? errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletFormState() when $default != null:
return $default(_that.status,_that.selectedWalletId,_that.form,_that.message,_that.errors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SubmissionStatus status,  int? selectedWalletId,  WalletFormData form,  String? message,  Map<String, dynamic>? errors)  $default,) {final _that = this;
switch (_that) {
case _WalletFormState():
return $default(_that.status,_that.selectedWalletId,_that.form,_that.message,_that.errors);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SubmissionStatus status,  int? selectedWalletId,  WalletFormData form,  String? message,  Map<String, dynamic>? errors)?  $default,) {final _that = this;
switch (_that) {
case _WalletFormState() when $default != null:
return $default(_that.status,_that.selectedWalletId,_that.form,_that.message,_that.errors);case _:
  return null;

}
}

}

/// @nodoc


class _WalletFormState extends WalletFormState {
  const _WalletFormState({this.status = SubmissionStatus.initial, this.selectedWalletId, this.form = const WalletFormData(), this.message, final  Map<String, dynamic>? errors}): _errors = errors,super._();
  

@override@JsonKey() final  SubmissionStatus status;
@override final  int? selectedWalletId;
@override@JsonKey() final  WalletFormData form;
@override final  String? message;
 final  Map<String, dynamic>? _errors;
@override Map<String, dynamic>? get errors {
  final value = _errors;
  if (value == null) return null;
  if (_errors is EqualUnmodifiableMapView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of WalletFormState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletFormStateCopyWith<_WalletFormState> get copyWith => __$WalletFormStateCopyWithImpl<_WalletFormState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletFormState&&(identical(other.status, status) || other.status == status)&&(identical(other.selectedWalletId, selectedWalletId) || other.selectedWalletId == selectedWalletId)&&(identical(other.form, form) || other.form == form)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._errors, _errors));
}


@override
int get hashCode => Object.hash(runtimeType,status,selectedWalletId,form,message,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'WalletFormState(status: $status, selectedWalletId: $selectedWalletId, form: $form, message: $message, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$WalletFormStateCopyWith<$Res> implements $WalletFormStateCopyWith<$Res> {
  factory _$WalletFormStateCopyWith(_WalletFormState value, $Res Function(_WalletFormState) _then) = __$WalletFormStateCopyWithImpl;
@override @useResult
$Res call({
 SubmissionStatus status, int? selectedWalletId, WalletFormData form, String? message, Map<String, dynamic>? errors
});


@override $WalletFormDataCopyWith<$Res> get form;

}
/// @nodoc
class __$WalletFormStateCopyWithImpl<$Res>
    implements _$WalletFormStateCopyWith<$Res> {
  __$WalletFormStateCopyWithImpl(this._self, this._then);

  final _WalletFormState _self;
  final $Res Function(_WalletFormState) _then;

/// Create a copy of WalletFormState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? selectedWalletId = freezed,Object? form = null,Object? message = freezed,Object? errors = freezed,}) {
  return _then(_WalletFormState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SubmissionStatus,selectedWalletId: freezed == selectedWalletId ? _self.selectedWalletId : selectedWalletId // ignore: cast_nullable_to_non_nullable
as int?,form: null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as WalletFormData,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,errors: freezed == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

/// Create a copy of WalletFormState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WalletFormDataCopyWith<$Res> get form {
  
  return $WalletFormDataCopyWith<$Res>(_self.form, (value) {
    return _then(_self.copyWith(form: value));
  });
}
}

/// @nodoc
mixin _$WalletFormData {

 String? get name; int? get balance;
/// Create a copy of WalletFormData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletFormDataCopyWith<WalletFormData> get copyWith => _$WalletFormDataCopyWithImpl<WalletFormData>(this as WalletFormData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletFormData&&(identical(other.name, name) || other.name == name)&&(identical(other.balance, balance) || other.balance == balance));
}


@override
int get hashCode => Object.hash(runtimeType,name,balance);

@override
String toString() {
  return 'WalletFormData(name: $name, balance: $balance)';
}


}

/// @nodoc
abstract mixin class $WalletFormDataCopyWith<$Res>  {
  factory $WalletFormDataCopyWith(WalletFormData value, $Res Function(WalletFormData) _then) = _$WalletFormDataCopyWithImpl;
@useResult
$Res call({
 String? name, int? balance
});




}
/// @nodoc
class _$WalletFormDataCopyWithImpl<$Res>
    implements $WalletFormDataCopyWith<$Res> {
  _$WalletFormDataCopyWithImpl(this._self, this._then);

  final WalletFormData _self;
  final $Res Function(WalletFormData) _then;

/// Create a copy of WalletFormData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? balance = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,balance: freezed == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [WalletFormData].
extension WalletFormDataPatterns on WalletFormData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletFormData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletFormData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletFormData value)  $default,){
final _that = this;
switch (_that) {
case _WalletFormData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletFormData value)?  $default,){
final _that = this;
switch (_that) {
case _WalletFormData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  int? balance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletFormData() when $default != null:
return $default(_that.name,_that.balance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  int? balance)  $default,) {final _that = this;
switch (_that) {
case _WalletFormData():
return $default(_that.name,_that.balance);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  int? balance)?  $default,) {final _that = this;
switch (_that) {
case _WalletFormData() when $default != null:
return $default(_that.name,_that.balance);case _:
  return null;

}
}

}

/// @nodoc


class _WalletFormData extends WalletFormData {
  const _WalletFormData({this.name = '', this.balance = 0}): super._();
  

@override@JsonKey() final  String? name;
@override@JsonKey() final  int? balance;

/// Create a copy of WalletFormData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletFormDataCopyWith<_WalletFormData> get copyWith => __$WalletFormDataCopyWithImpl<_WalletFormData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletFormData&&(identical(other.name, name) || other.name == name)&&(identical(other.balance, balance) || other.balance == balance));
}


@override
int get hashCode => Object.hash(runtimeType,name,balance);

@override
String toString() {
  return 'WalletFormData(name: $name, balance: $balance)';
}


}

/// @nodoc
abstract mixin class _$WalletFormDataCopyWith<$Res> implements $WalletFormDataCopyWith<$Res> {
  factory _$WalletFormDataCopyWith(_WalletFormData value, $Res Function(_WalletFormData) _then) = __$WalletFormDataCopyWithImpl;
@override @useResult
$Res call({
 String? name, int? balance
});




}
/// @nodoc
class __$WalletFormDataCopyWithImpl<$Res>
    implements _$WalletFormDataCopyWith<$Res> {
  __$WalletFormDataCopyWithImpl(this._self, this._then);

  final _WalletFormData _self;
  final $Res Function(_WalletFormData) _then;

/// Create a copy of WalletFormData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? balance = freezed,}) {
  return _then(_WalletFormData(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,balance: freezed == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
