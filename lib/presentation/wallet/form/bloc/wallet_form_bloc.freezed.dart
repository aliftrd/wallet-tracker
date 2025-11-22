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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InitializeEvent value)?  initialize,TResult Function( _NameChangedEvent value)?  nameChanged,TResult Function( _BalanceChangedEvent value)?  balanceChanged,TResult Function( _ColorAndIconChangedEvent value)?  colorAndIconChanged,TResult Function( _SubmitEvent value)?  submit,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InitializeEvent() when initialize != null:
return initialize(_that);case _NameChangedEvent() when nameChanged != null:
return nameChanged(_that);case _BalanceChangedEvent() when balanceChanged != null:
return balanceChanged(_that);case _ColorAndIconChangedEvent() when colorAndIconChanged != null:
return colorAndIconChanged(_that);case _SubmitEvent() when submit != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InitializeEvent value)  initialize,required TResult Function( _NameChangedEvent value)  nameChanged,required TResult Function( _BalanceChangedEvent value)  balanceChanged,required TResult Function( _ColorAndIconChangedEvent value)  colorAndIconChanged,required TResult Function( _SubmitEvent value)  submit,}){
final _that = this;
switch (_that) {
case _InitializeEvent():
return initialize(_that);case _NameChangedEvent():
return nameChanged(_that);case _BalanceChangedEvent():
return balanceChanged(_that);case _ColorAndIconChangedEvent():
return colorAndIconChanged(_that);case _SubmitEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InitializeEvent value)?  initialize,TResult? Function( _NameChangedEvent value)?  nameChanged,TResult? Function( _BalanceChangedEvent value)?  balanceChanged,TResult? Function( _ColorAndIconChangedEvent value)?  colorAndIconChanged,TResult? Function( _SubmitEvent value)?  submit,}){
final _that = this;
switch (_that) {
case _InitializeEvent() when initialize != null:
return initialize(_that);case _NameChangedEvent() when nameChanged != null:
return nameChanged(_that);case _BalanceChangedEvent() when balanceChanged != null:
return balanceChanged(_that);case _ColorAndIconChangedEvent() when colorAndIconChanged != null:
return colorAndIconChanged(_that);case _SubmitEvent() when submit != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int? walletId)?  initialize,TResult Function( String name)?  nameChanged,TResult Function( String balance)?  balanceChanged,TResult Function( Color color,  IconData icon)?  colorAndIconChanged,TResult Function()?  submit,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InitializeEvent() when initialize != null:
return initialize(_that.walletId);case _NameChangedEvent() when nameChanged != null:
return nameChanged(_that.name);case _BalanceChangedEvent() when balanceChanged != null:
return balanceChanged(_that.balance);case _ColorAndIconChangedEvent() when colorAndIconChanged != null:
return colorAndIconChanged(_that.color,_that.icon);case _SubmitEvent() when submit != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int? walletId)  initialize,required TResult Function( String name)  nameChanged,required TResult Function( String balance)  balanceChanged,required TResult Function( Color color,  IconData icon)  colorAndIconChanged,required TResult Function()  submit,}) {final _that = this;
switch (_that) {
case _InitializeEvent():
return initialize(_that.walletId);case _NameChangedEvent():
return nameChanged(_that.name);case _BalanceChangedEvent():
return balanceChanged(_that.balance);case _ColorAndIconChangedEvent():
return colorAndIconChanged(_that.color,_that.icon);case _SubmitEvent():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int? walletId)?  initialize,TResult? Function( String name)?  nameChanged,TResult? Function( String balance)?  balanceChanged,TResult? Function( Color color,  IconData icon)?  colorAndIconChanged,TResult? Function()?  submit,}) {final _that = this;
switch (_that) {
case _InitializeEvent() when initialize != null:
return initialize(_that.walletId);case _NameChangedEvent() when nameChanged != null:
return nameChanged(_that.name);case _BalanceChangedEvent() when balanceChanged != null:
return balanceChanged(_that.balance);case _ColorAndIconChangedEvent() when colorAndIconChanged != null:
return colorAndIconChanged(_that.color,_that.icon);case _SubmitEvent() when submit != null:
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


class _NameChangedEvent implements WalletFormEvent {
  const _NameChangedEvent(this.name);
  

 final  String name;

/// Create a copy of WalletFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NameChangedEventCopyWith<_NameChangedEvent> get copyWith => __$NameChangedEventCopyWithImpl<_NameChangedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NameChangedEvent&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'WalletFormEvent.nameChanged(name: $name)';
}


}

/// @nodoc
abstract mixin class _$NameChangedEventCopyWith<$Res> implements $WalletFormEventCopyWith<$Res> {
  factory _$NameChangedEventCopyWith(_NameChangedEvent value, $Res Function(_NameChangedEvent) _then) = __$NameChangedEventCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class __$NameChangedEventCopyWithImpl<$Res>
    implements _$NameChangedEventCopyWith<$Res> {
  __$NameChangedEventCopyWithImpl(this._self, this._then);

  final _NameChangedEvent _self;
  final $Res Function(_NameChangedEvent) _then;

/// Create a copy of WalletFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_NameChangedEvent(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _BalanceChangedEvent implements WalletFormEvent {
  const _BalanceChangedEvent(this.balance);
  

 final  String balance;

/// Create a copy of WalletFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BalanceChangedEventCopyWith<_BalanceChangedEvent> get copyWith => __$BalanceChangedEventCopyWithImpl<_BalanceChangedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BalanceChangedEvent&&(identical(other.balance, balance) || other.balance == balance));
}


@override
int get hashCode => Object.hash(runtimeType,balance);

@override
String toString() {
  return 'WalletFormEvent.balanceChanged(balance: $balance)';
}


}

/// @nodoc
abstract mixin class _$BalanceChangedEventCopyWith<$Res> implements $WalletFormEventCopyWith<$Res> {
  factory _$BalanceChangedEventCopyWith(_BalanceChangedEvent value, $Res Function(_BalanceChangedEvent) _then) = __$BalanceChangedEventCopyWithImpl;
@useResult
$Res call({
 String balance
});




}
/// @nodoc
class __$BalanceChangedEventCopyWithImpl<$Res>
    implements _$BalanceChangedEventCopyWith<$Res> {
  __$BalanceChangedEventCopyWithImpl(this._self, this._then);

  final _BalanceChangedEvent _self;
  final $Res Function(_BalanceChangedEvent) _then;

/// Create a copy of WalletFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? balance = null,}) {
  return _then(_BalanceChangedEvent(
null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ColorAndIconChangedEvent implements WalletFormEvent {
  const _ColorAndIconChangedEvent(this.color, this.icon);
  

 final  Color color;
 final  IconData icon;

/// Create a copy of WalletFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ColorAndIconChangedEventCopyWith<_ColorAndIconChangedEvent> get copyWith => __$ColorAndIconChangedEventCopyWithImpl<_ColorAndIconChangedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ColorAndIconChangedEvent&&(identical(other.color, color) || other.color == color)&&(identical(other.icon, icon) || other.icon == icon));
}


@override
int get hashCode => Object.hash(runtimeType,color,icon);

@override
String toString() {
  return 'WalletFormEvent.colorAndIconChanged(color: $color, icon: $icon)';
}


}

/// @nodoc
abstract mixin class _$ColorAndIconChangedEventCopyWith<$Res> implements $WalletFormEventCopyWith<$Res> {
  factory _$ColorAndIconChangedEventCopyWith(_ColorAndIconChangedEvent value, $Res Function(_ColorAndIconChangedEvent) _then) = __$ColorAndIconChangedEventCopyWithImpl;
@useResult
$Res call({
 Color color, IconData icon
});




}
/// @nodoc
class __$ColorAndIconChangedEventCopyWithImpl<$Res>
    implements _$ColorAndIconChangedEventCopyWith<$Res> {
  __$ColorAndIconChangedEventCopyWithImpl(this._self, this._then);

  final _ColorAndIconChangedEvent _self;
  final $Res Function(_ColorAndIconChangedEvent) _then;

/// Create a copy of WalletFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? color = null,Object? icon = null,}) {
  return _then(_ColorAndIconChangedEvent(
null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as IconData,
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

 int? get walletId; SubmissionStatus get formStatus; SubmissionStatus get walletStatus; WalletFormData get form; String? get message; Map<String, dynamic>? get errors;
/// Create a copy of WalletFormState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletFormStateCopyWith<WalletFormState> get copyWith => _$WalletFormStateCopyWithImpl<WalletFormState>(this as WalletFormState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletFormState&&(identical(other.walletId, walletId) || other.walletId == walletId)&&(identical(other.formStatus, formStatus) || other.formStatus == formStatus)&&(identical(other.walletStatus, walletStatus) || other.walletStatus == walletStatus)&&(identical(other.form, form) || other.form == form)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.errors, errors));
}


@override
int get hashCode => Object.hash(runtimeType,walletId,formStatus,walletStatus,form,message,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'WalletFormState(walletId: $walletId, formStatus: $formStatus, walletStatus: $walletStatus, form: $form, message: $message, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $WalletFormStateCopyWith<$Res>  {
  factory $WalletFormStateCopyWith(WalletFormState value, $Res Function(WalletFormState) _then) = _$WalletFormStateCopyWithImpl;
@useResult
$Res call({
 int? walletId, SubmissionStatus formStatus, SubmissionStatus walletStatus, WalletFormData form, String? message, Map<String, dynamic>? errors
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
@pragma('vm:prefer-inline') @override $Res call({Object? walletId = freezed,Object? formStatus = null,Object? walletStatus = null,Object? form = null,Object? message = freezed,Object? errors = freezed,}) {
  return _then(_self.copyWith(
walletId: freezed == walletId ? _self.walletId : walletId // ignore: cast_nullable_to_non_nullable
as int?,formStatus: null == formStatus ? _self.formStatus : formStatus // ignore: cast_nullable_to_non_nullable
as SubmissionStatus,walletStatus: null == walletStatus ? _self.walletStatus : walletStatus // ignore: cast_nullable_to_non_nullable
as SubmissionStatus,form: null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? walletId,  SubmissionStatus formStatus,  SubmissionStatus walletStatus,  WalletFormData form,  String? message,  Map<String, dynamic>? errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletFormState() when $default != null:
return $default(_that.walletId,_that.formStatus,_that.walletStatus,_that.form,_that.message,_that.errors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? walletId,  SubmissionStatus formStatus,  SubmissionStatus walletStatus,  WalletFormData form,  String? message,  Map<String, dynamic>? errors)  $default,) {final _that = this;
switch (_that) {
case _WalletFormState():
return $default(_that.walletId,_that.formStatus,_that.walletStatus,_that.form,_that.message,_that.errors);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? walletId,  SubmissionStatus formStatus,  SubmissionStatus walletStatus,  WalletFormData form,  String? message,  Map<String, dynamic>? errors)?  $default,) {final _that = this;
switch (_that) {
case _WalletFormState() when $default != null:
return $default(_that.walletId,_that.formStatus,_that.walletStatus,_that.form,_that.message,_that.errors);case _:
  return null;

}
}

}

/// @nodoc


class _WalletFormState extends WalletFormState {
  const _WalletFormState({this.walletId, this.formStatus = SubmissionStatus.initial, this.walletStatus = SubmissionStatus.initial, this.form = const WalletFormData(), this.message, final  Map<String, dynamic>? errors}): _errors = errors,super._();
  

@override final  int? walletId;
@override@JsonKey() final  SubmissionStatus formStatus;
@override@JsonKey() final  SubmissionStatus walletStatus;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletFormState&&(identical(other.walletId, walletId) || other.walletId == walletId)&&(identical(other.formStatus, formStatus) || other.formStatus == formStatus)&&(identical(other.walletStatus, walletStatus) || other.walletStatus == walletStatus)&&(identical(other.form, form) || other.form == form)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._errors, _errors));
}


@override
int get hashCode => Object.hash(runtimeType,walletId,formStatus,walletStatus,form,message,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'WalletFormState(walletId: $walletId, formStatus: $formStatus, walletStatus: $walletStatus, form: $form, message: $message, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$WalletFormStateCopyWith<$Res> implements $WalletFormStateCopyWith<$Res> {
  factory _$WalletFormStateCopyWith(_WalletFormState value, $Res Function(_WalletFormState) _then) = __$WalletFormStateCopyWithImpl;
@override @useResult
$Res call({
 int? walletId, SubmissionStatus formStatus, SubmissionStatus walletStatus, WalletFormData form, String? message, Map<String, dynamic>? errors
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
@override @pragma('vm:prefer-inline') $Res call({Object? walletId = freezed,Object? formStatus = null,Object? walletStatus = null,Object? form = null,Object? message = freezed,Object? errors = freezed,}) {
  return _then(_WalletFormState(
walletId: freezed == walletId ? _self.walletId : walletId // ignore: cast_nullable_to_non_nullable
as int?,formStatus: null == formStatus ? _self.formStatus : formStatus // ignore: cast_nullable_to_non_nullable
as SubmissionStatus,walletStatus: null == walletStatus ? _self.walletStatus : walletStatus // ignore: cast_nullable_to_non_nullable
as SubmissionStatus,form: null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
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

 int? get id; String? get name; int get balance; Color? get color; IconData? get icon;
/// Create a copy of WalletFormData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletFormDataCopyWith<WalletFormData> get copyWith => _$WalletFormDataCopyWithImpl<WalletFormData>(this as WalletFormData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletFormData&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.color, color) || other.color == color)&&(identical(other.icon, icon) || other.icon == icon));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,balance,color,icon);

@override
String toString() {
  return 'WalletFormData(id: $id, name: $name, balance: $balance, color: $color, icon: $icon)';
}


}

/// @nodoc
abstract mixin class $WalletFormDataCopyWith<$Res>  {
  factory $WalletFormDataCopyWith(WalletFormData value, $Res Function(WalletFormData) _then) = _$WalletFormDataCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, int balance, Color? color, IconData? icon
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? balance = null,Object? color = freezed,Object? icon = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as int,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as IconData?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  int balance,  Color? color,  IconData? icon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletFormData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  int balance,  Color? color,  IconData? icon)  $default,) {final _that = this;
switch (_that) {
case _WalletFormData():
return $default(_that.id,_that.name,_that.balance,_that.color,_that.icon);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  int balance,  Color? color,  IconData? icon)?  $default,) {final _that = this;
switch (_that) {
case _WalletFormData() when $default != null:
return $default(_that.id,_that.name,_that.balance,_that.color,_that.icon);case _:
  return null;

}
}

}

/// @nodoc


class _WalletFormData extends WalletFormData {
  const _WalletFormData({this.id, this.name, this.balance = 0, this.color, this.icon}): super._();
  

@override final  int? id;
@override final  String? name;
@override@JsonKey() final  int balance;
@override final  Color? color;
@override final  IconData? icon;

/// Create a copy of WalletFormData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletFormDataCopyWith<_WalletFormData> get copyWith => __$WalletFormDataCopyWithImpl<_WalletFormData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletFormData&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.color, color) || other.color == color)&&(identical(other.icon, icon) || other.icon == icon));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,balance,color,icon);

@override
String toString() {
  return 'WalletFormData(id: $id, name: $name, balance: $balance, color: $color, icon: $icon)';
}


}

/// @nodoc
abstract mixin class _$WalletFormDataCopyWith<$Res> implements $WalletFormDataCopyWith<$Res> {
  factory _$WalletFormDataCopyWith(_WalletFormData value, $Res Function(_WalletFormData) _then) = __$WalletFormDataCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, int balance, Color? color, IconData? icon
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? balance = null,Object? color = freezed,Object? icon = freezed,}) {
  return _then(_WalletFormData(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as int,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as IconData?,
  ));
}


}

// dart format on
